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
  static const _green = Color(0xFF1B4D3E);
  final _supabaseService = SupabaseService();

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
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_isLoading && _stock.isEmpty) return const Center(child: CircularProgressIndicator());

    if (_errorMessage != null && _stock.isEmpty) {
      return Center(child: Text(_errorMessage!, style: const TextStyle(color: Colors.grey)));
    }

    if (_stock.isEmpty) {
      return const Center(child: Text("No items found in this store.", style: TextStyle(color: Colors.grey)));
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _stock.length,
      itemBuilder: (context, index) {
        final item = _stock[index];
        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: _green.withOpacity(0.1),
              child: const Icon(Icons.shopping_bag, color: _green),
            ),
            title: Text(item['name'] ?? 'Item', style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("${item['quantity']} ${item['unit'] ?? ''} • ₹${item['price'] ?? '--'}"),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: (item['status'] == 'Available') ? Colors.green.shade50 : Colors.red.shade50,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                item['status'] ?? 'Available',
                style: TextStyle(
                  color: (item['status'] == 'Available') ? Colors.green.shade800 : Colors.red.shade800,
                  fontSize: 12, 
                  fontWeight: FontWeight.bold
                ),
              ),
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