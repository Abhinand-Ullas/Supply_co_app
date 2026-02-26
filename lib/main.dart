import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supply_co/core_pages/homepage.dart';
import 'package:supply_co/intro_pages/splashscreen.dart';
import 'package:supply_co/services/local_storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageService.init(); // Initialize local storage before runApp
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  // 1. Load the .env file
  await dotenv.load(fileName: ".env");
  // 2. Initialize Supabase using the environment variables
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  // Listen for auth state changes globally
  // This catches the Google OAuth redirect when the app is reopened via deep link
  Supabase.instance.client.auth.onAuthStateChange.listen((data) {
    final event = data.event;

    if (event == AuthChangeEvent.signedIn) {
      // When Google login completes and deep link brings user back,
      // this fires and navigates to HomePage
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => HomePage()),
        (route) => false, // Remove all previous routes (clean stack)
      );
    }
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Supplyco-project",
      debugShowCheckedModeBanner: false,
      // Pass the navigatorKey to MaterialApp so the global listener can navigate
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1B4D3E)),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}