import 'package:flutter/material.dart';
import 'package:supply_co/pages/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    check_launch();
  }
  void check_launch  () async{

    await Future.delayed(Duration(seconds: 3),
    () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
    }

    );

    }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Splashscreen"),
        centerTitle: true,
      ),
    );
  }
}
