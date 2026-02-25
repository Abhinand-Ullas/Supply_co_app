import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  final _supabase = Supabase.instance.client;

  /// Fetch all stores from Supabase, ordered by name.
  /// Expects columns: id, name, district, place (optional), code (optional),
  /// distance_km (optional – can be computed server-side or left null).
  Future<List<Map<String, dynamic>>> fetchStores() async {
    try {
      final response = await _supabase
          .from('stores')
          .select()
          .order('name', ascending: true);

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      print('Error fetching stores: $e');
      return [];
    }
  }

  /// Fetch stores filtered by district and/or a search query.
  /// The search matches against name, place, and code columns using
  /// Supabase's ilike operator (case-insensitive).
  Future<List<Map<String, dynamic>>> searchStores({
    String? district,
    String query = '',
  }) async {
    try {
      var builder = _supabase.from('stores').select();

      if (district != null && district.isNotEmpty) {
        builder = builder.eq('district', district) as dynamic;
      }

      if (query.isNotEmpty) {
        // Search across name, place, and code columns
        builder = builder.or(
          'name.ilike.%$query%,place.ilike.%$query%,code.ilike.%$query%',
        ) as dynamic;
      }

      final response =
          await (builder as dynamic).order('name', ascending: true);

      return List<Map<String, dynamic>>.from(response);
    } catch (e) {
      print('Error searching stores: $e');
      return [];
    }
  }
}
