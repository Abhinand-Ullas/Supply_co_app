import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supply_co/core_pages/homepage.dart';
import 'package:supply_co/intro_pages/auth_wrapper.dart';
import 'package:supply_co/intro_pages/splashscreen.dart';
import 'package:supply_co/services/local_storage_service.dart';
import 'package:supply_co/services/notification_service.dart'; // Import the service
import 'package:firebase_core/firebase_core.dart';

// global navigator key so auth listener can navigate
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('main(): widgets binding initialized');

  try {
    await StorageService.init(); // Initialize local storage before runApp
    print('main(): StorageService.init completed');

    // 1. Load the .env file
    await dotenv.load(fileName: ".env");
    print('main(): .env loaded  url=${dotenv.env['SUPABASE_URL']}');

    // 2. Initialize Supabase using the environment variables
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );
    print('main(): Supabase initialized');

    // Initialize Firebase before using any Firebase services
    await Firebase.initializeApp();
    print('main(): Firebase.initializeApp completed');

    // 3. Start Notification Service (only after Firebase is ready)
    // We don't await this because we don't want to block the UI startup
    NotificationService().initNotifications();
    print('main(): NotificationService init called');

    // Listen for auth state changes globally
    Supabase.instance.client.auth.onAuthStateChange.listen((data) {
      final event = data.event;
      print('auth state change: $event');
      if (event == AuthChangeEvent.signedIn) {
        StorageService.setGuestMode(false);
        navigatorKey.currentState?.pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
        );
      }
    });
  } catch (e, st) {
    print('main(): initialization error: $e\n$st');
  }

  print('main(): calling runApp');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyApp.build fired');
    return MaterialApp(
      navigatorKey: navigatorKey, // pass key for global navigation
      title: "Supplyco-project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B4D3E)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
