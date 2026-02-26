import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final _supabase = Supabase.instance.client;

  // 1. Fetch All Stores (Fixed Column Names)
  Future<List<Map<String, dynamic>>> fetchStores() async {
    try {
      final response = await _supabase
          .from('stores')
          // 🟢 FIXED: Only asking for columns that exist in your DB Schema
          // Removed: 'place', 'phone_contact'
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
}