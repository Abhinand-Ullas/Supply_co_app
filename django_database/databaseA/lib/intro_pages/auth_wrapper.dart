import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../core_pages/homepage.dart';
import '../intro_pages/auth_page.dart';
import '../services/local_storage_service.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<AuthState>(
      // Listen to the auth state changes in real-time
      stream: Supabase.instance.client.auth.onAuthStateChange,
      builder: (context, snapshot) {
        // 1. Loading State
        if (snapshot.connectionState == ConnectionState.waiting) {
          // You can return your SplashScreen here if you want
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        // 2. Check session
        final session = snapshot.data?.session;

        if (session != null) {
          return const HomePage();
        } else if (StorageService.isGuestMode()) {
          return const HomePage();
        } else {
          return const AuthPage();
        }
      },
    );
  }
}
