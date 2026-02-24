import 'package:flutter/material.dart';
import 'package:supply_co/pages/stockpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("HomePage"),
          MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> StockPage()));
            },
            child: Text("view stock"),
          ),
        ],
      ),
    );
  }
}
