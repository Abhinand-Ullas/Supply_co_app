import 'package:flutter/material.dart';
import 'package:supply_co/pages/stockpage.dart';
import 'package:supply_co/services/supabase_service.dart'; // Import the service

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _supabaseService = SupabaseService();
  late Future<List<Map<String, dynamic>>> _storesFuture;

  @override
  void initState() {
    super.initState();
    _storesFuture = _supabaseService.fetchStores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select a Store"),
        backgroundColor: const Color(0xFF1B4D3E), // SupplyCo Green
        foregroundColor: Colors.white,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _storesFuture,
        builder: (context, snapshot) {
          // 1. Loading State
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // 2. Error State
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }

          // 3. Empty State
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No stores found in database."));
          }

          // 4. Success State (Display List)
          final stores = snapshot.data!;
          return ListView.builder(
            itemCount: stores.length,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index) {
              final store = stores[index];
              return Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Color(0xFF1B4D3E),
                    child: Icon(Icons.store, color: Colors.white),
                  ),
                  title: Text(
                    store['name'], // e.g., "Maveli Store - Pattom"
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(store['district']),
                  trailing: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1B4D3E),
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      // MAGIC HAPPENS HERE: Pass the specific store to StockPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StockPage(storeId: store['id']),
                        ),
                      );
                    },
                    child: const Text("View Stock"),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}