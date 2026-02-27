import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:supply_co/services/supabase_service.dart';

class NotificationService {
  final _supabaseService = SupabaseService();

  Future<void> initNotifications() async {
    // Ensure Firebase is initialized before accessing FirebaseMessaging
    if (Firebase.apps.isEmpty) {
      print('NotificationService.initNotifications: Firebase not initialized yet');
      return;
    }
    final _firebaseMessaging = FirebaseMessaging.instance;
    // 1. Request Permission
    // On Android 13+, this triggers the system dialog.
    // On Android 12 and below, this automatically returns 'authorized'.
    NotificationSettings settings = await _firebaseMessaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );

    print('User granted permission: ${settings.authorizationStatus}');

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      // 2. Permission Granted! Get the token.
      await _getTokenAndSave();

      // 3. Listen for token refreshes (e.g., app re-install or clear data)
      _firebaseMessaging.onTokenRefresh.listen((newToken) {
        print("🔄 FCM Token Refreshed: $newToken");
        _supabaseService.updateUserDetails(fcmToken: newToken);
      });
      
    } else {
      print('❌ User declined notification permission');
    }
  }

  Future<void> _getTokenAndSave() async {
    try {
      // Get the token (This identifies this specific phone)
      if (Firebase.apps.isEmpty) {
        print('NotificationService._getTokenAndSave: Firebase not initialized');
        return;
      }
      final _firebaseMessaging = FirebaseMessaging.instance;
      String? token;

      if (Platform.isIOS) {
        // iOS requires a specific APNS token first
        token = await _firebaseMessaging.getAPNSToken();
        if (token != null) {
          // If APNS is success, get FCM
          token = await _firebaseMessaging.getToken();
        }
      } else {
        // Android (Works for 10, 11, 12, 13+)
        token = await _firebaseMessaging.getToken();
      }

      if (token != null) {
        print("🔥 FCM Token: $token");
        // Save to Supabase 'user_details' table
        await _supabaseService.updateUserDetails(fcmToken: token);
      } else {
        print("⚠️ Failed to get FCM token");
      }
    } catch (e) {
      print("Error getting FCM token: $e");
    }
  }
}