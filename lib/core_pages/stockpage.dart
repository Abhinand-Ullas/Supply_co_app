// ─────────────────────────────────────────────────────────────────────────────
//  StockPage — Redesigned with improved colors, typography & layout
// ─────────────────────────────────────────────────────────────────────────────
import 'package:flutter/material.dart';
import 'package:supply_co/services/supabase_service.dart';
import 'package:supply_co/services/local_storage_service.dart';
import 'package:supply_co/core_pages/stock_empty.dart';

class StockPage extends StatefulWidget {
  final int storeId;
  final String supplyCOName;
  final List<Map<String, dynamic>>? cachedStock;
  final String? cachedAt;

  const StockPage({
    super.key,
    required this.storeId,
    required this.supplyCOName,
    this.cachedStock,
    this.cachedAt,
  });

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> with SingleTickerProviderStateMixin {
  static const _brandGreen    = Color(0xFF1B4D3E);
  static const _accentGreen   = Color(0xFF2E7D52);
  static const _lightGreen    = Color(0xFFE8F5E9);
  static const _bgCream       = Color(0xFFF8F6F2);
  static const _cardWhite     = Color(0xFFFFFFFF);
  static const _priceGreen    = Color(0xFF1E8C2F);
  static const _unavailableRed= Color(0xFFD32F2F);

  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";
  late TabController _tabController;
  bool _isStockSelected = true;

  final _supabaseService = SupabaseService();
  List<Map<String, dynamic>> _stock = [];
  bool _isLoading = true;
  bool _isShowingCache = false;
  String? _cacheTimestamp;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() => _isStockSelected = _tabController.index == 0);
    });

    if (widget.cachedStock != null && widget.cachedStock!.isNotEmpty) {
      _stock = widget.cachedStock!;
      _isLoading = false;
      _isShowingCache = true;
      _cacheTimestamp = widget.cachedAt;
    }
    _fetchFreshStock();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _fetchFreshStock() async {
    try {
      final freshStock = await _supabaseService.fetchStock(widget.storeId);
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
          _isShowingCache = false;
          _errorMessage = null;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = _stock.isEmpty;
          _errorMessage = _stock.isEmpty ? 'Unable to load stock.' : null;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgCream,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          if (_isShowingCache && _cacheTimestamp != null)
            _OfflineBanner(
              timeAgo: StorageService.getTimeAgo(_cacheTimestamp!),
              onRefresh: _fetchFreshStock,
            ),
          _buildSearchBar(),
          if (_searchQuery.isEmpty) _buildTabBar(),
          Expanded(child: _buildBody()),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: _brandGreen,
      foregroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.supplyCOName,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
          const Text(
            'Stock availability',
            style: TextStyle(
              fontSize: 11,
              color: Colors.white70,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.refresh_rounded),
          tooltip: 'Refresh',
          onPressed: () {
            setState(() { _isLoading = true; _errorMessage = null; });
            _fetchFreshStock();
          },
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(color: Colors.white24, height: 1),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 8),
      child: Container(
        decoration: BoxDecoration(
          color: _cardWhite,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: TextField(
          controller: _searchController,
          style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A1A)),
          decoration: InputDecoration(
            hintText: 'Search items...',
            hintStyle: const TextStyle(color: Color(0xFFAAAAAA), fontSize: 14),
            prefixIcon: const Icon(Icons.search_rounded, color: Color(0xFF888888), size: 20),
            suffixIcon: _searchQuery.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.close_rounded, size: 18, color: Color(0xFF888888)),
                    onPressed: () {
                      _searchController.clear();
                      setState(() => _searchQuery = '');
                    },
                  )
                : null,
            filled: true,
            fillColor: Colors.transparent,
            contentPadding: const EdgeInsets.symmetric(vertical: 12),
            border: InputBorder.none,
          ),
          onChanged: (v) => setState(() => _searchQuery = v),
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      child: Container(
        height: 42,
        decoration: BoxDecoration(
          color: const Color(0xFFEAEAEA),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TabBar(
          controller: _tabController,
          indicator: BoxDecoration(
            color: _brandGreen,
            borderRadius: BorderRadius.circular(8),
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFF555555),
          labelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
          dividerColor: Colors.transparent,
          padding: const EdgeInsets.all(3),
          tabs: const [
            Tab(text: 'Stock Items'),
            Tab(text: 'Special'),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (!_isStockSelected) {
      return _buildEmptySpecial();
    }

    if (_isLoading && _stock.isEmpty) {
      return Center(
        child: CircularProgressIndicator(
          color: _accentGreen,
          strokeWidth: 2.5,
        ),
      );
    }

    if (_errorMessage != null && _stock.isEmpty) {
      return _buildErrorState();
    }

    if (_stock.isEmpty) {
      return _buildEmptyState();
    }

    final filtered = _stock.where((item) {
      final name = (item['name'] ?? '').toString().toLowerCase();
      return name.contains(_searchQuery.toLowerCase());
    }).toList();

    if (_searchQuery.isNotEmpty && filtered.isEmpty) {
      return const StockNotFound();
    }

    final availableCount = filtered.where((i) {
      final q = i['quantity'];
      if (q == null) return false;
      if (q is int) return q > 0;
      if (q is double) return q > 0;
      return int.tryParse(q.toString()) != null && int.parse(q.toString()) > 0;
    }).length;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Row(
            children: [
              _StatChip(
                icon: Icons.inventory_2_outlined,
                label: '${filtered.length} items',
                color: _brandGreen,
              ),
              const SizedBox(width: 8),
              _StatChip(
                icon: Icons.check_circle_outline,
                label: '$availableCount available',
                color: _priceGreen,
              ),
            ],
          ),
        ),

        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 20), // ← top 14 added
            itemCount: filtered.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.4,
            ),
            itemBuilder: (context, index) => _StockCard(
              item: filtered[index],
              brandGreen: _brandGreen,
              priceGreen: _priceGreen,
              lightGreen: _lightGreen,
              unavailableRed: _unavailableRed,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmptySpecial() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.local_offer_outlined, size: 56, color: Colors.grey.shade300),
          const SizedBox(height: 12),
          const Text('No special items right now',
              style: TextStyle(color: Color(0xFF999999), fontSize: 15)),
          const SizedBox(height: 4),
          const Text('Check back later for offers',
              style: TextStyle(color: Color(0xFFBBBBBB), fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.store_outlined, size: 56, color: Colors.grey.shade300),
          const SizedBox(height: 12),
          const Text('No items found', style: TextStyle(color: Color(0xFF999999))),
        ],
      ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.wifi_off_rounded, size: 52, color: Colors.grey.shade300),
          const SizedBox(height: 12),
          Text(_errorMessage!, style: const TextStyle(color: Color(0xFF999999))),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: _fetchFreshStock,
            icon: const Icon(Icons.refresh, size: 16),
            label: const Text('Try Again'),
            style: ElevatedButton.styleFrom(
              backgroundColor: _brandGreen,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  Stock Card Widget
// ─────────────────────────────────────────────
class _StockCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final Color brandGreen, priceGreen, lightGreen, unavailableRed;

  const _StockCard({
    required this.item,
    required this.brandGreen,
    required this.priceGreen,
    required this.lightGreen,
    required this.unavailableRed,
  });

  @override
  Widget build(BuildContext context) {
    final quantity = item['quantity'] ?? 0;
    final isAvailable = quantity > 0;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: .07),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
          BoxShadow(
            color: (isAvailable ? brandGreen : Colors.grey)
                .withValues(alpha: .18),
            blurRadius: 6,
            spreadRadius: 1,
            offset: Offset.zero,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 55,
                height: 83,
                decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    item['image_url'] ?? '',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Icon(
                      Icons.shopping_basket_outlined,
                      size: 26,
                      color: brandGreen.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              item['name'] ?? 'Item',
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                color: Color(0xFF1A1A1A),
                                height: 1.2,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 13,
                            height: 13,
                            decoration: BoxDecoration(
                              color: isAvailable
                                  ? const Color(0xFF4CAF50)
                                  : const Color(0xFFE53935),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: (isAvailable ? Colors.green : Colors.red)
                                      .withOpacity(0.25),
                                  blurRadius: 6,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "${item['quantity']} ${item['unit'] ?? ''}",
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF888888),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "₹${item['price'] ?? '--'}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: priceGreen,
                          letterSpacing: -0.3,
                        ),
                      ),
                    ],
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                      decoration: BoxDecoration(
                        color: isAvailable
                            ? const Color(0xFFE8F5E9)
                            : const Color(0xFFFCE4E4),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            isAvailable ? 'Available' : 'Not Available',
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.w700,
                              color: isAvailable
                                  ? const Color(0xFF2E7D32)
                                  : unavailableRed,
                              letterSpacing: 0.3,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Container(
                            width: 14,
                            height: 14,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              isAvailable
                                  ? Icons.check_rounded
                                  : Icons.close_rounded,
                              size: 10,
                              color: isAvailable
                                  ? const Color(0xFF2E7D32)
                                  : unavailableRed,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  Stats Chip
// ─────────────────────────────────────────────
class _StatChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _StatChip({required this.icon, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color.withOpacity(0.08),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: color),
          const SizedBox(width: 5),
          Text(label, style: TextStyle(fontSize: 11, color: color, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  Offline Banner
// ─────────────────────────────────────────────
class _OfflineBanner extends StatelessWidget {
  final String timeAgo;
  final VoidCallback onRefresh;
  const _OfflineBanner({required this.timeAgo, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
      decoration: const BoxDecoration(
        color: Color(0xFFFFF3CD),
        border: Border(bottom: BorderSide(color: Color(0xFFFFE082), width: 1)),
      ),
      child: Row(
        children: [
          const Icon(Icons.wifi_off_rounded, size: 15, color: Color(0xFF8D6E00)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              "Offline • Updated $timeAgo",
              style: const TextStyle(
                color: Color(0xFF7A5700),
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          GestureDetector(
            onTap: onRefresh,
            child: const Text(
              "Retry",
              style: TextStyle(
                color: Color(0xFF5D4000),
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}