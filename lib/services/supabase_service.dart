import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final _supabase = Supabase.instance.client;

  // Fetch all stores from Supabase
  Future<List<Map<String, dynamic>>> fetchStores() async {
    try {
      final response = await _supabase
          .from('stores') // Ensure this matches your Table Name in Supabase
          .select()
          .order('name', ascending: true);

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      print('Error fetching stores: $e');
      return []; // Return empty list on error
    }
  }
}