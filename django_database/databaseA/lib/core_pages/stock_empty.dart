import 'package:flutter/material.dart';

class StockNotFound extends StatelessWidget {
  const StockNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 60),

        
          // Basket Icon
          Icon(
            Icons.local_grocery_store_outlined,
            size: 200,
            color: const Color.fromARGB(255, 57, 57, 57),
          ),

          const SizedBox(height: 25),

          // Title
          const Text(
            "Item Not Available",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              decoration: TextDecoration.none,
            ),
          ),

          const SizedBox(height: 12),

          // Subtitle
          const Text(
            "We couldn't find the item you are looking for.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}