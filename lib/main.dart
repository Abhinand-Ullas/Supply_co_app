import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supply_co/intro_pages/splashscreen.dart';
import 'package:supply_co/core_pages/homepage.dart';

// A global key to access the navigator from anywhere (including auth listener)

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 1. Load the .env file
  await dotenv.load(fileName: ".env");
  // 2. Initialize Supabase using the environment variables
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

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