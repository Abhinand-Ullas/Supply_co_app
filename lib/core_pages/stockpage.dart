// ─────────────────────────────────────────────────────────────────────────────
//  StockPage — shows stock for a given SupplyCo store.
//
//  Offline flow:
//    1. If cachedStock is passed in, display it immediately with a banner
//       showing "Last updated X mins ago".
//    2. In the background, try to fetch fresh stock from Supabase.
//    3. If fetch succeeds → replace cached view, hide banner, save new snapshot.
//    4. If fetch fails (offline) → keep showing cached data, banner stays.
// ─────────────────────────────────────────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:supply_co/services/supabase_service.dart';
import 'package:supply_co/services/local_storage_service.dart';
import 'package:supply_co/core_pages/stock_empty.dart';

class StockPage extends StatefulWidget {
  // 🟢 NEW: This is the missing parameter causing your error
  final int storeId; 
  final String supplyCOName;

  // Optional: For offline loading
  final List<Map<String, dynamic>>? cachedStock;
  final String? cachedAt;

  const StockPage({
    super.key,
    required this.storeId, // 🟢 NOW DEFINED HERE
    required this.supplyCOName,
    this.cachedStock,
    this.cachedAt,
  });

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {




  final TextEditingController _searchController = TextEditingController();
String _searchQuery = "";




  static const _green = Color(0xFF1B4D3E);
  final _supabaseService = SupabaseService();

  bool _isStockSelected = true;

  List<Map<String, dynamic>> _stock = [];
  bool _isLoading = true;
  bool _isShowingCache = false; // true = displaying saved data
  String? _cacheTimestamp;      // shown in the banner
  String? _errorMessage;

  @override
  void initState() {
    super.initState();

    // 1. Show Cached Data immediately if available
    if (widget.cachedStock != null && widget.cachedStock!.isNotEmpty) {
      _stock = widget.cachedStock!;
      _isLoading = false;
      _isShowingCache = true;
      _cacheTimestamp = widget.cachedAt;
    }

    // 2. Fetch Fresh Data using the ID
    _fetchFreshStock();
  }

  Future<void> _fetchFreshStock() async {
    try {
      // 🟢 FIXED: Using storeId (int) instead of parsing the name
      final freshStock = await _supabaseService.fetchStock(widget.storeId);

      // Save snapshot for next time
      final storeInfo = {
        'id': widget.storeId,
        'name': widget.supplyCOName,
        'district': freshStock.isNotEmpty ? freshStock.first['district'] ?? '' : '',
      };
      await StorageService.saveStoreSnapshot(storeInfo, freshStock);

      if (mounted) {
        setState(() {
          _stock = freshStock;
          _isLoading = false;
          _isShowingCache = false; // We are live!
          _errorMessage = null;
        });
      }
    } catch (e) {
      // Offline fallback logic
      if (mounted) {
        setState(() {
          _isLoading = _stock.isEmpty; // Keep showing cache if available
          _errorMessage = _stock.isEmpty ? 'Unable to load stock.' : null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: _green,
        foregroundColor: Colors.white,
        title: Text(widget.supplyCOName, style: const TextStyle(fontSize: 16)),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() { _isLoading = true; _errorMessage = null; });
              _fetchFreshStock();
            },
          ),
        ],
      ),





      body: Column(
  children: [

    if (_isShowingCache && _cacheTimestamp != null)
      _CachedDataBanner(
        timeAgo: StorageService.getTimeAgo(_cacheTimestamp!),
        onRefresh: _fetchFreshStock,
      ),

    // 🔍 SEARCH BAR
    Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: "Search items...",
          prefixIcon: const Icon(Icons.search),
          filled: true,
          fillColor: const Color.fromARGB(255, 234, 233, 233),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _searchQuery = value;
          });
        },
      ),
    ),





    // 🔁 Toggle Section
    if (_searchQuery.isEmpty)
    
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16),
  child: Container(
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Colors.grey.shade300,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [

        // STOCK TAB
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isStockSelected = true;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: _isStockSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                "Stock Items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: _isStockSelected
                      ? Colors.green.shade800
                      : Colors.black54,
                ),
              ),
            ),
          ),
        ),

        // SPECIAL TAB
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _isStockSelected = false;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: !_isStockSelected ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                "Special",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: !_isStockSelected
                      ? Colors.green.shade800
                      : Colors.black54,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  ),
),

    


    Expanded(child: _buildBody()),
  ],
),
    );
  }

  Widget _buildBody() {



    if (!_isStockSelected) {
  return const Center(
    child: Text(
      "No special items available.",
      style: TextStyle(color: Colors.grey),
    ),
  );
}




    if (_isLoading && _stock.isEmpty) return const Center(child: CircularProgressIndicator());

    if (_errorMessage != null && _stock.isEmpty) {
      return Center(child: Text(_errorMessage!, style: const TextStyle(color: Colors.grey)));
    }

    if (_stock.isEmpty) {
      return const Center(child: Text("No items found in this store.", style: TextStyle(color: Colors.grey)));
    }





    List<Map<String, dynamic>> filteredStock = _stock.where((item) {
  final name = (item['name'] ?? '').toString().toLowerCase();
  return name.contains(_searchQuery.toLowerCase());
}).toList();

// If user searched but no results found
if (_searchQuery.isNotEmpty && filteredStock.isEmpty) {
  return const StockNotFound();
}



    return GridView.builder(
  padding: const EdgeInsets.all(16),
  itemCount: filteredStock.length,
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2, // 👈 2 items per row
    crossAxisSpacing: 20,
    mainAxisSpacing: 15,
    childAspectRatio: 9 / 2, // controls height
  ),
  itemBuilder: (context, index) {
    final item = filteredStock[index];

    return Card(
      color: const Color.fromARGB(255, 231, 243, 233),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Icon
            CircleAvatar(
              backgroundColor: _green.withOpacity(0.1),
              child: const Icon(Icons.shopping_bag, color: _green),
            ),

            // Item Name
            Text(
              item['name'] ?? 'Item',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),

            // Quantity & Price
            Text(
              "${item['quantity']} ${item['unit'] ?? ''} • ₹${item['price'] ?? '--'}",
              style: const TextStyle(fontSize: 12),
            ),

            // Status
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  color: (item['status'] == 'Available')
                      ? const Color.fromARGB(255, 217, 248, 219)
                      : const Color.fromARGB(255, 255, 225, 230),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  item['status'] ?? 'Available',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: (item['status'] == 'Available')
                        ? Colors.green.shade800
                        : Colors.red.shade800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  },
);
  }
}

// ─────────────────────────────────────────────
//  Banner Widget
// ─────────────────────────────────────────────
class _CachedDataBanner extends StatelessWidget {
  final String timeAgo;
  final VoidCallback onRefresh;
  const _CachedDataBanner({required this.timeAgo, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.shade100,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.wifi_off, size: 16, color: Colors.brown),
          const SizedBox(width: 8),
          Expanded(child: Text("Offline Mode • Updated $timeAgo", style: const TextStyle(color: Colors.brown, fontSize: 13))),
          GestureDetector(
            onTap: onRefresh,
            child: const Text("Refresh", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold)),
          )
        ],
      ),
    );
  }
}