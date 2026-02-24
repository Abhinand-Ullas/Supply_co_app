import 'package:flutter/material.dart';
import 'package:supply_co/pages/homepage.dart';
import 'package:supply_co/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Supplyco-project",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
