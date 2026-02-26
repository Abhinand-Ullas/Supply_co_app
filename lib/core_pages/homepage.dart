import 'package:flutter/material.dart';
import 'package:supply_co/core_pages/stockpage.dart';
import 'package:supply_co/services/supabase_service.dart';

// ─────────────────────────────────────────────
//  HomePage  –  "Search SupplyCo Outlets"
// ─────────────────────────────────────────────
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _green = Color(0xFF1B4D3E);
  static const _lightBg = Color(0xFFF5F5F5);

  final _supabaseService = SupabaseService();
  final _searchController = TextEditingController();
  final _searchFocusNode = FocusNode();

  // District dropdown
  String? _selectedDistrict;
  bool _districtDropdownOpen = false;
  List<String> _districts = [];

  // All stores fetched once
  List<Map<String, dynamic>> _allStores = [];
  bool _loadingStores = true;

  // Search state
  List<Map<String, dynamic>> _suggestions = []; // autocomplete while typing
  List<Map<String, dynamic>>? _searchResults; // null = not yet searched
  bool _searching = false;

  @override
  void initState() {
    super.initState();
    _loadStoresAndDistricts();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  // ── Data ──────────────────────────────────────

  Future<void> _loadStoresAndDistricts() async {
    final stores = await _supabaseService.fetchStores();
    final districtSet = <String>{};
    for (final s in stores) {
      final d = s['district']?.toString();
      if (d != null && d.isNotEmpty) districtSet.add(d);
    }
    if (mounted) {
      setState(() {
        _allStores = stores;
        _districts = districtSet.toList()..sort();
        _loadingStores = false;
      });
    }
  }

  // ── Helpers ───────────────────────────────────

  List<Map<String, dynamic>> _filterStores({
    required String query,
    String? district,
  }) {
    final q = query.trim().toLowerCase();
    return _allStores.where((s) {
      final matchDistrict =
          district == null || s['district']?.toString() == district;
      final matchQuery = q.isEmpty ||
          (s['name']?.toString().toLowerCase().contains(q) ?? false) ||
          (s['place']?.toString().toLowerCase().contains(q) ?? false) ||
          (s['code']?.toString().toLowerCase().contains(q) ?? false);
      return matchDistrict && matchQuery;
    }).toList();
  }

  void _onSearchChanged() {
    final q = _searchController.text;
    if (q.isEmpty) {
      setState(() => _suggestions = []);
      return;
    }
    final matches = _filterStores(query: q, district: _selectedDistrict);
    setState(() => _suggestions = matches.take(5).toList());
  }

  void _performSearch() {
    _searchFocusNode.unfocus();
    setState(() {
      _suggestions = [];
      _searchResults = _filterStores(
        query: _searchController.text,
        district: _selectedDistrict,
      );
      _searching = false;
    });
  }

  void _selectSuggestion(Map<String, dynamic> store) {
    _searchController.text = store['name'] ?? '';
    _searchFocusNode.unfocus();
    setState(() {
      _suggestions = [];
      _searchResults = [store];
    });
  }

  void _selectDistrict(String district) {
    setState(() {
      _selectedDistrict = district;
      _districtDropdownOpen = false;
    });
  }

  void _navigateToStock(Map<String, dynamic> store) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StockPage(supplyCOName: store['name'] ?? 'supplyco'),
      ),
    );
  }

  // ── Build ─────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _searchFocusNode.unfocus();
        if (_districtDropdownOpen) setState(() => _districtDropdownOpen = false);
      },
      child: Scaffold(
        backgroundColor: _lightBg,
        appBar: _buildAppBar(),
        body: _searchResults != null
            ? _ResultsPage(
                results: _searchResults!,
                district: _selectedDistrict,
                onBack: () => setState(() => _searchResults = null),
                onViewStock: _navigateToStock,
                green: _green,
              )
            : _buildSearchPage(),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: _green,
      foregroundColor: Colors.white,
      elevation: 0,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
          backgroundColor: Colors.white24,
          child: Icon(Icons.person, color: Colors.white, size: 20),
        ),
      ),
      title: const Text(
        'Guest',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
            icon: const Icon(Icons.chat, color: Colors.greenAccent),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildSearchPage() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Search SupplyCo Outlets',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // District Dropdown
            _buildDistrictDropdown(),
            const SizedBox(height: 12),

            // Search Field + Suggestions
            _buildSearchField(),
            const SizedBox(height: 16),

            // Search Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 0,
                ),
                onPressed: _performSearch,
                child: const Text(
                  'Search',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Hint
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style:
                    const TextStyle(fontSize: 13, color: Colors.black54),
                children: [
                  const TextSpan(text: "Tap "),
                  TextSpan(
                    text: "'Search'",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:
                        " to find the government outlets in ${_selectedDistrict ?? 'your district'} that match your query.",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            // Illustration
            Center(
              child: Column(
                children: [
                  _SearchIllustration(green: _green),
                  const SizedBox(height: 16),
                  const Text(
                    'Please enter an outlet name or shop code or place\nto search for supplyco outlets',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDistrictDropdown() {
    return Column(
      children: [
        GestureDetector(
          onTap: () =>
              setState(() => _districtDropdownOpen = !_districtDropdownOpen),
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              children: [
                Icon(Icons.location_on, color: _green, size: 20),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    _selectedDistrict ?? 'Select District',
                    style: TextStyle(
                      fontSize: 15,
                      color: _selectedDistrict != null
                          ? Colors.black87
                          : Colors.black54,
                    ),
                  ),
                ),
                Icon(
                  _districtDropdownOpen
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
        if (_districtDropdownOpen)
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: _loadingStores
                ? const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Column(
                    children: _districts
                        .map(
                          (d) => InkWell(
                            onTap: () => _selectDistrict(d),
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 14),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.shade200),
                                ),
                              ),
                              child: Text(d,
                                  style: const TextStyle(fontSize: 15)),
                            ),
                          ),
                        )
                        .toList(),
                  ),
          ),
      ],
    );
  }

  Widget _buildSearchField() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: TextField(
            controller: _searchController,
            focusNode: _searchFocusNode,
            textInputAction: TextInputAction.search,
            onSubmitted: (_) => _performSearch(),
            decoration: InputDecoration(
              hintText: 'Search by name or place or code',
              hintStyle:
                  const TextStyle(color: Colors.black38, fontSize: 14),
              prefixIcon:
                  Icon(Icons.search, color: Colors.black45, size: 20),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 14),
            ),
          ),
        ),
        if (_suggestions.isNotEmpty)
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                )
              ],
            ),
            child: Column(
              children: _suggestions
                  .map(
                    (s) => InkWell(
                      onTap: () => _selectSuggestion(s),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 13),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom:
                                BorderSide(color: Colors.grey.shade200),
                          ),
                        ),
                        child: Text(
                          _storeSuggestionLabel(s),
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }

  String _storeSuggestionLabel(Map<String, dynamic> s) {
    final name = s['name'] ?? '';
    final place = s['place'] ?? s['district'] ?? '';
    return place.toString().isNotEmpty ? '$name — $place' : name.toString();
  }
}

// ─────────────────────────────────────────────
//  Results Page  –  "All SupplyCo Outlets"
// ─────────────────────────────────────────────
class _ResultsPage extends StatefulWidget {
  final List<Map<String, dynamic>> results;
  final String? district;
  final VoidCallback onBack;
  final void Function(Map<String, dynamic>) onViewStock;
  final Color green;

  const _ResultsPage({
    required this.results,
    required this.district,
    required this.onBack,
    required this.onViewStock,
    required this.green,
  });

  @override
  State<_ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<_ResultsPage> {
  static const _pageSize = 7;
  int _displayCount = _pageSize;
  bool _sortByDistance = true;

  List<Map<String, dynamic>> get _displayed =>
      widget.results.take(_displayCount).toList();

  bool get _hasMore => _displayCount < widget.results.length;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'All SupplyCo Outlets',
                style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Row(
                  children: [
                    Icon(Icons.location_on,
                        color: widget.green, size: 18),
                    const SizedBox(width: 6),
                    Text(
                      widget.district != null
                          ? '${widget.district} District'
                          : 'All Districts',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    const SizedBox(width: 8),
                    Container(
                        width: 1, height: 16, color: Colors.grey.shade300),
                    const SizedBox(width: 8),
                    Text(
                      '${widget.results.length} Outlets Found',
                      style: const TextStyle(
                          fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 4),
                child: Text(
                  'Sorted by Distance',
                  style: TextStyle(
                      fontSize: 12, color: Colors.grey.shade500),
                ),
              ),
              // Sort button
              OutlinedButton.icon(
                onPressed: () =>
                    setState(() => _sortByDistance = !_sortByDistance),
                icon: const Icon(Icons.swap_vert, size: 16),
                label: const Text('Sort >'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  side: BorderSide(color: Colors.grey.shade400),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 6),
                  textStyle: const TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
        ),

        // List
        Expanded(
          child: ListView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: _displayed.length + 1, // +1 for footer
            itemBuilder: (context, index) {
              if (index == _displayed.length) {
                return _buildFooter();
              }
              return _buildStoreCard(_displayed[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildStoreCard(Map<String, dynamic> store) {
    final name = store['name'] ?? 'Unknown Store';
    final place = store['place'] ?? store['district'] ?? '';
    final distance = store['distance_km'];

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.toString().isNotEmpty ? '$name - $place' : name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text('📍', style: TextStyle(fontSize: 13)),
                    const SizedBox(width: 4),
                    Text(
                      distance != null
                          ? '$distance km away'
                          : '2.0 km away',
                      style: const TextStyle(
                          fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () => widget.onViewStock(store),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black87,
              side: BorderSide(color: Colors.grey.shade400),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              textStyle: const TextStyle(fontSize: 13),
            ),
            child: const Text('View Stock >'),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    if (widget.results.isEmpty) {
      return const Padding(
        padding: EdgeInsets.all(24),
        child: Center(
            child: Text('No outlets found.',
                style: TextStyle(color: Colors.black54))),
      );
    }
    if (_hasMore) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: GestureDetector(
          onTap: () => setState(() => _displayCount += _pageSize),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: const Center(
              child: Text(
                'View More Outlets',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black87),
              ),
            ),
          ),
        ),
      );
    }
    // Loading indicator (shown briefly while paginating)
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Text(
          '__ Loading More Outlets __',
          style: TextStyle(fontSize: 13, color: Colors.black38),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  Decorative search illustration (pure Flutter)
// ─────────────────────────────────────────────
class _SearchIllustration extends StatelessWidget {
  final Color green;
  const _SearchIllustration({required this.green});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background circle
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: green.withOpacity(0.07),
            ),
          ),
          // Phone body
          Container(
            width: 90,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade400, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  height: 8,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                const SizedBox(height: 8),
                Icon(Icons.location_on, color: green, size: 24),
              ],
            ),
          ),
          // Magnifying glass
          Positioned(
            right: 10,
            bottom: 30,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: const Offset(0, 2))
                ],
              ),
              child: Icon(Icons.search, color: green, size: 26),
            ),
          ),
          // Chat bubble
          Positioned(
            left: 8,
            top: 40,
            child: Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                color: green.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.chat_bubble_outline,
                  color: green, size: 18),
            ),
          ),
        ],
      ),
    );
  }
}
