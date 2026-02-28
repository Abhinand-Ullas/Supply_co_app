import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final _supabase = Supabase.instance.client;

  // 1. Fetch All Stores (Fixed Column Names)
  Future<List<Map<String, dynamic>>> fetchStores() async {
    try {
      final response = await _supabase
          .from('stores')
          .select('id, name, district, address, govt_store_id') 
          .order('name', ascending: true);
      
      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      print('Error fetching stores: $e');
      return [];
    }
  }

  // 2. Fetch Nearby Stores (RPC)
  Future<List<Map<String, dynamic>>> fetchNearbyStores(double lat, double long) async {
    try {
      final response = await _supabase.rpc('get_nearby_stores', params: {
        'lat': lat, 
        'long': long
      });
      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      print('Error fetching nearby: $e');
      return [];
    }
  }

  // 3. Fetch Stock (JOIN Query)
  Future<List<Map<String, dynamic>>> fetchStock(int storeId) async {
    try {
      final response = await _supabase
          .from('stock')
          .select('quantity, price, status, items(name, unit, image_url, category)')
          .eq('store_id', storeId); 

      return List<Map<String, dynamic>>.from(response.map((row) {
        final item = row['items'] as Map<String, dynamic>;
        return {
          'name': item['name'],
          'quantity': row['quantity'],
          'unit': item['unit'],
          'price': row['price'],
          'status': row['status'],
          'image_url': item['image_url'],
          'category': item['category'],
        };
      }));
    } catch (e) {
      print('Error fetching stock: $e');
      throw e;
    }
  }
  // ─────────────────────────────────────────────
  //  USER PREFERENCES (Profile)
  // ─────────────────────────────────────────────

  /// 1. Fetch User Details (Safe to call even if row doesn't exist)
  Future<Map<String, dynamic>?> fetchUserDetails() async {
    final user = _supabase.auth.currentUser;
    if (user == null) return null;

    try {
      final data = await _supabase
          .from('user_details')
          .select()
          .eq('id', user.id)
          .maybeSingle(); // 'maybeSingle' returns null if no row found (instead of crashing)
      return data;
    } catch (e) {
      print("Error fetching profile: $e");
      return null;
    }
  }

  /// 2. Update User Details (Flexible Upsert)
  /// You can call this with just ONE parameter (e.g., only district)
  /// and it won't erase the other fields.
  Future<void> updateUserDetails({
    String? district,
    String? lastStoreId,
    String? fcmToken,
    String? name,
    String? phone,
  }) async {
    final user = _supabase.auth.currentUser;
    if (user == null) return;

    // 1. Prepare the data packet
    // We ALWAYS include 'id' so Supabase knows which row to update/create.
    final Map<String, dynamic> updates = {
      'id': user.id,
      // If you had an 'updated_at' column, you'd add it here:
      // 'updated_at': DateTime.now().toIso8601String(), 
    };

    // 2. Only add fields that are NOT null
    if (district != null) updates['selected_district'] = district;
    if (lastStoreId != null) updates['last_selected_supplyco'] = lastStoreId;
    if (fcmToken != null) updates['fcm_token'] = fcmToken;
    if (name != null) updates['name'] = name;
    if (phone != null) updates['phone_number'] = phone;

    try {
      // 3. Perform UPSERT (Update if exists, Insert if new)
      await _supabase.from('user_details').upsert(updates);
    } catch (e) {
      print("Error updating profile: $e");
    }
  }
}