import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static late SharedPreferences _prefs;

  static const _keySnapshot = 'last_visited_snapshot';
  static const _keyAllStores = 'all_stores_cache';
  static const _keyOnboarding = 'seen_onboarding';

  // Call once in main.dart before runApp()
  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // ── Onboarding ─────────────────────────────────────────────

  static bool hasSeenOnboarding() => _prefs.getBool(_keyOnboarding) ?? false;

  static Future<void> markOnboardingSeen() =>
      _prefs.setBool(_keyOnboarding, true);

  // ── Store List Cache ───────────────────────────────────────

  static Future<void> saveAllStores(List<Map<String, dynamic>> stores) async {
    await _prefs.setString(_keyAllStores, jsonEncode(stores));
  }

  static List<Map<String, dynamic>> getAllStores() {
    final raw = _prefs.getString(_keyAllStores);
    if (raw == null) return [];
    return List<Map<String, dynamic>>.from(jsonDecode(raw));
  }

  // ── Last Visited Snapshot (store + stock + time) ───────────

  /// Call this in StockPage after stock loads successfully.
  static Future<void> saveStoreSnapshot(
    Map<String, dynamic> store,
    List<Map<String, dynamic>> stock,
  ) async {
    final snapshot = {
      'store_info': store,
      'stock_data': stock,
      'last_updated': DateTime.now().toIso8601String(),
    };
    await _prefs.setString(_keySnapshot, jsonEncode(snapshot));
  }

  /// Returns { store_info, stock_data, last_updated } or null.
  static Map<String, dynamic>? getStoreSnapshot() {
    final raw = _prefs.getString(_keySnapshot);
    return raw != null ? Map<String, dynamic>.from(jsonDecode(raw)) : null;
  }

  static bool hasSnapshot() => _prefs.containsKey(_keySnapshot);

  // ── Time Helper ────────────────────────────────────────────

  static String getTimeAgo(String isoTimestamp) {
    final storedTime = DateTime.parse(isoTimestamp);
    final diff = DateTime.now().difference(storedTime);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} mins ago';
    if (diff.inHours < 24) return '${diff.inHours} hrs ago';
    return '${diff.inDays} days ago';
  }
}
