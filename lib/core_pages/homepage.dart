import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:supply_co/core_pages/stockpage.dart';
import 'package:supply_co/services/notification_service.dart';
import 'package:supply_co/services/supabase_service.dart';
import 'package:supply_co/services/local_storage_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:supply_co/other_pages/profile_and_settings_page.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';
import 'package:supply_co/services/location_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _green = Color(0xFF1B4D3E);
  static const _orange = Color(0xFFE87830);
  // ✅ Softer off-white — less yellow, easier on the eyes
  static const _lightBg = Color(0xFFF5F5F0);

  final _supabaseService = SupabaseService();
  final _searchController = TextEditingController();
  final _searchFocusNode = FocusNode();

  String? _selectedDistrict;
  bool _districtDropdownOpen = false;
  List<String> _districts = [];
  List<Map<String, dynamic>> _allStores = [];
  bool _loadingStores = true;
  List<Map<String, dynamic>> _suggestions = [];

  // _searchResults → full-page _ResultsPage (Search button or "View all")
  List<Map<String, dynamic>>? _searchResults;

  // _nearbyStores → inline results shown on home page
  List<Map<String, dynamic>>? _nearbyStores;

  List<Map<String, dynamic>> _previewStores = [];

  String? _username;
  Map<String, dynamic>? _lastSnapshot;

  // true = button tap (shows spinner), false background = no spinner
  bool _isFetchingLocation = false;
  bool _isSilentRefresh = false;

  @override
  void initState() {
    super.initState();
    NotificationService().initNotifications();
    _lastSnapshot = StorageService.getStoreSnapshot();
    _loadStoresAndDistricts();
    _searchController.addListener(_onSearchChanged);
    _loadUserPreferences();
    _fetchNearbyStoresIfPermitted();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  // ── Data ─────────────────────────────────────────────────

  Future<void> _loadStoresAndDistricts() async {
    final cachedStores = StorageService.getAllStores();
    if (cachedStores.isNotEmpty) _applyStores(cachedStores);
    try {
      final stores = await _supabaseService.fetchStores();
      _applyStores(stores);
      await StorageService.saveAllStores(stores);
    } catch (_) {}
  }

  void setupFcm() async {
    if (Firebase.apps.isEmpty) return;
    try {
      String? token = await FirebaseMessaging.instance.getToken();
      if (token != null) await SupabaseService().updateUserDetails(fcmToken: token);
      FirebaseMessaging.instance.onTokenRefresh.listen((t) {
        SupabaseService().updateUserDetails(fcmToken: t);
      });
    } catch (e) {
      print('HomePage.setupFcm error: $e');
    }
  }

  void _applyStores(List<Map<String, dynamic>> stores) {
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

  Future<void> _loadUserPreferences() async {
    final data = await _supabaseService.fetchUserDetails();
    if (data == null || !mounted) return;
    setState(() {
      if (data['name'] != null && data['name'].toString().isNotEmpty) {
        _username = data['name'];
      }
      if (data['selected_district'] != null) {
        _selectedDistrict = data['selected_district'];
      }
    });
    final lastStoreId = data['last_selected_supplyco'];
    if (lastStoreId != null) {
      try {
        if (_allStores.isEmpty) {
          final stores = await _supabaseService.fetchStores();
          _applyStores(stores);
        }
        final storeInfo = _allStores.firstWhere(
          (s) => s['id'].toString() == lastStoreId.toString(),
          orElse: () => {},
        );
        if (storeInfo.isNotEmpty) {
          final int idAsInt = int.parse(lastStoreId.toString());
          final stockData = await _supabaseService.fetchStock(idAsInt);
          final newSnapshot = {
            'store_info': storeInfo,
            'stock_data': stockData,
            'last_updated': DateTime.now().toIso8601String(),
          };
          await StorageService.saveStoreSnapshot(storeInfo, stockData);
          if (mounted) setState(() => _lastSnapshot = newSnapshot);
        }
      } catch (e) {
        print("Error restoring last visited store: $e");
      }
    }
  }

  // ── Search ────────────────────────────────────────────────

  List<Map<String, dynamic>> _filterStores({
    required String query,
    String? district,
  }) {
    final q = query.trim().toLowerCase();
    return _allStores.where((s) {
      final storeDistrict = s['district']?.toString();
      final matchDistrict = district == null || storeDistrict == district;
      final name = s['name']?.toString().toLowerCase() ?? '';
      final place = s['address']?.toString().toLowerCase() ?? '';
      final code = s['govt_store_id']?.toString().toLowerCase() ?? '';
      final matchQuery =
          q.isEmpty || name.contains(q) || place.contains(q) || code.contains(q);
      return matchDistrict && matchQuery;
    }).toList();
  }

  // ── Location ──────────────────────────────────────────────

  /// Button tap — shows spinner + error snackbar on failure
  Future<void> _fetchNearbyStores() async {
    setState(() => _isFetchingLocation = true);
    try {
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                  'Please turn on GPS / Location from your phone settings.'),
              backgroundColor: Colors.red,
              action: SnackBarAction(
                label: 'Open Settings',
                textColor: Colors.white,
                onPressed: () => Geolocator.openLocationSettings(),
              ),
            ),
          );
        }
        return;
      }
      final position = await LocationService.getUserLocation();
      if (position == null) throw Exception("Could not determine location.");

      final nearbyStores = await _supabaseService.fetchNearbyStores(
        position.latitude,
        position.longitude,
      );
      if (mounted) {
        setState(() {
          _nearbyStores = nearbyStores; // inline on home page
          _selectedDistrict = null;
        });
      }
    } catch (e) {
      if (mounted) {
        final message = e.toString().replaceFirst('Exception: ', '');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
            action: SnackBarAction(
              label: 'Settings',
              textColor: Colors.white,
              onPressed: () => Geolocator.openLocationSettings(),
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isFetchingLocation = false);
    }
  }

  /// initState auto-fetch — silent, no spinner, no error shown
  Future<void> _fetchNearbyStoresIfPermitted() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) return;

    setState(() => _isSilentRefresh = true);
    try {
      final position = await LocationService.getUserLocation();
      if (position == null) return;
      final nearbyStores = await _supabaseService.fetchNearbyStores(
        position.latitude,
        position.longitude,
      );
      if (mounted) setState(() => _nearbyStores = nearbyStores);
    } catch (_) {
      // silent fail
    } finally {
      if (mounted) setState(() => _isSilentRefresh = false);
    }
  }

  void _onSearchChanged() {
    final q = _searchController.text;
    setState(() {
      _suggestions = q.isEmpty
          ? []
          : _filterStores(query: q, district: _selectedDistrict).take(5).toList();
    });
  }

  void _performSearch() {
    _searchFocusNode.unfocus();
    setState(() {
      _suggestions = [];
      _searchResults = _filterStores(
        query: _searchController.text,
        district: _selectedDistrict,
      );
    });
  }

  void _selectSuggestion(Map<String, dynamic> store) {
    _searchController.text = store['name'] ?? '';
    _searchFocusNode.unfocus();
    setState(() {
      _suggestions = [];
      _previewStores = [store];
    });
  }

  void _selectDistrict(String district) {
    setState(() {
      _selectedDistrict = district;
      _districtDropdownOpen = false;
    });
    _supabaseService.updateUserDetails(district: district);
  }

  // ── Navigation ────────────────────────────────────────────

  void _navigateToStock(Map<String, dynamic> store) {
    final id = store['id'];
    if (id == null) return;
    _supabaseService.updateUserDetails(lastStoreId: id.toString());
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StockPage(
          storeId: id,
          supplyCOName: store['name'] ?? 'SupplyCo',
        ),
      ),
    );
  }

  void _navigateToLastVisited() {
    if (_lastSnapshot == null) return;
    final storeInfo = Map<String, dynamic>.from(_lastSnapshot!['store_info']);
    final List<Map<String, dynamic>> cachedStockList =
        _lastSnapshot!['stock_data'] != null
            ? List<Map<String, dynamic>>.from(_lastSnapshot!['stock_data'])
            : [];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StockPage(
          storeId: storeInfo['id'] ?? 0,
          supplyCOName: storeInfo['name'] ?? 'SupplyCo',
          cachedStock: cachedStockList,
          cachedAt: _lastSnapshot!['last_updated'],
        ),
      ),
    );
  }

  // ── Build ─────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _searchResults == null,
      onPopInvoked: (didPop) {
        if (didPop) return;
        setState(() => _searchResults = null);
      },
      child: GestureDetector(
        onTap: () {
          _searchFocusNode.unfocus();
          if (_districtDropdownOpen)
            setState(() => _districtDropdownOpen = false);
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
      ),
    );
  }

  AppBar _buildAppBar() {
    final loc = AppLocalizations.of(context)!;
    final bool isShowingResults = _searchResults != null;
    return AppBar(
      backgroundColor: _green,
      foregroundColor: Colors.white,
      elevation: 0,
      leading: isShowingResults
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              tooltip: 'Back to Search',
              onPressed: () => setState(() => _searchResults = null),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const ProfileSettingsPage()),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: const Icon(Icons.person, color: Colors.white, size: 20),
                ),
              ),
            ),
      title: Text(
        isShowingResults ? loc.searchResults : (_username ?? loc.guest),
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      actions: [
        IconButton(
            icon: const Icon(Icons.notifications_outlined), onPressed: () {}),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: IconButton(
              icon: const Icon(Icons.chat, color: Colors.white),
              onPressed: () {}),
        ),
      ],
    );
  }

  // ── Search Page — original layout ─────────────────────────

  Widget _buildSearchPage() {
    final loc = AppLocalizations.of(context)!;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              loc.searchSupplycoOutlets,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Last Visited
            if (_lastSnapshot != null) ...[
              _LastVisitedCard(
                snapshot: _lastSnapshot!,
                onTap: _navigateToLastVisited,
                green: _green,
              ),
              const SizedBox(height: 20),
            ],

            _buildDistrictDropdown(),
            const SizedBox(height: 12),
            _buildSearchField(),
            const SizedBox(height: 16),

            // Search button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 0,
                ),
                onPressed: _performSearch,
                child: Text(
                  loc.searchButton,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Location button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: _green,
                  side: BorderSide(color: _green.withValues(alpha: 0.5)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: _isFetchingLocation ? null : _fetchNearbyStores,
                icon: _isFetchingLocation
                    ? const SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.my_location),
                label: Text(
                  _isFetchingLocation ? 'Locating...' : 'Find Nearest Outlets',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            const SizedBox(height: 8),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style:
                    const TextStyle(fontSize: 13, color: Colors.black54),
                children: [
                  TextSpan(
                    text: loc.tapSearchToFind(
                        _selectedDistrict ?? 'your district'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Inline nearby / preview / illustration
            if (_isFetchingLocation)
              _buildLoadingShimmer()
            else if (_nearbyStores != null && _nearbyStores!.isNotEmpty)
              _buildNearbySection(loc)
            else if (_previewStores.isNotEmpty)
              _buildPreviewSection()
            else
              Center(
                child: Column(
                  children: [
                    _SearchIllustration(green: _green),
                    const SizedBox(height: 16),
                    Text(
                      loc.pleaseEnterOutlet,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 13, color: Colors.black54),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // ── Inline Nearby Results ─────────────────────────────────

  Widget _buildNearbySection(AppLocalizations loc) {
    final topStores = _nearbyStores!.take(3).toList();
    final hasMore = _nearbyStores!.length > 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.near_me, size: 15, color: _green),
                const SizedBox(width: 6),
                const Text(
                  'Nearby Outlets',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
              ],
            ),
            // Tiny dot — silent refresh indicator, no spinner
            if (_isSilentRefresh)
              Row(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                        color: _orange, shape: BoxShape.circle),
                  ),
                  const SizedBox(width: 4),
                  Text('Updating',
                      style: TextStyle(
                          fontSize: 11, color: Colors.grey.shade500)),
                ],
              ),
          ],
        ),
        const SizedBox(height: 10),

        ...topStores.map((store) => _buildNearbyStoreCard(store)),

        if (hasMore) ...[
          const SizedBox(height: 4),
          GestureDetector(
            // Only goes full-page when user explicitly taps this
            onTap: () => setState(() => _searchResults = _nearbyStores),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: _green.withValues(alpha: 0.3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'View all ${_nearbyStores!.length} outlets',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: _green,
                        fontSize: 14),
                  ),
                  const SizedBox(width: 6),
                  Icon(Icons.arrow_forward, size: 16, color: _green),
                ],
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildNearbyStoreCard(Map<String, dynamic> store) {
    final name = store['name'] ?? 'Unknown Store';
    final place = store['address'] ?? store['district'] ?? '';
    final distance = store['distance_km'];

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: _green.withValues(alpha: 0.08),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.store, color: _green, size: 22),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w700),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    if (place.isNotEmpty) ...[
                      Icon(Icons.location_on,
                          size: 11, color: Colors.grey.shade500),
                      const SizedBox(width: 2),
                      Flexible(
                        child: Text(
                          place,
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade500),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                    if (distance != null) ...[
                      const SizedBox(width: 6),
                      Text(
                        '· $distance km',
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade400),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () => _navigateToStock(store),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: _green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Stock',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ── Shimmer placeholders ──────────────────────────────────

  Widget _buildLoadingShimmer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.location_searching, size: 15, color: _green),
            const SizedBox(width: 6),
            const Text('Finding nearby outlets...',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87)),
          ],
        ),
        const SizedBox(height: 10),
        ...List.generate(
          3,
          (_) => Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 72,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Row(
              children: [
                const SizedBox(width: 14),
                Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        borderRadius: BorderRadius.circular(10))),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 12,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(4))),
                      const SizedBox(height: 7),
                      Container(
                          height: 10,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(4))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ── District Dropdown ─────────────────────────────────────

  Widget _buildDistrictDropdown() {
    final loc = AppLocalizations.of(context)!;
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
                    _selectedDistrict ?? loc.selectDistrict,
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
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3)),
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
                                        color: Colors.grey.shade200)),
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

  // ── Preview section ───────────────────────────────────────

  Widget _buildPreviewSection() {
    final loc = AppLocalizations.of(context)!;
    final store = _previewStores.first;
    final name = store['name'] ?? 'Unknown';
    final place = store['address'] ?? store['district'] ?? '';
    final distance = store['distance_km'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          loc.selectedOutlet,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black54),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: _green.withValues(alpha: 0.3)),
            boxShadow: [
              BoxShadow(
                  color: _green.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4)),
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: _green.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.store, color: _green, size: 24),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold)),
                        if (place.isNotEmpty)
                          Text(place,
                              style: const TextStyle(
                                  fontSize: 13, color: Colors.black54)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    distance != null
                        ? AppLocalizations.of(context)!
                            .kmAway(distance.toString())
                        : AppLocalizations.of(context)!.locationInfo,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () =>
                        setState(() => _searchResults = _previewStores),
                    child: Row(
                      children: [
                        Text(loc.viewMore,
                            style: TextStyle(
                                color: _green,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(width: 4),
                        Icon(Icons.arrow_forward, size: 16, color: _green),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ── Search field ──────────────────────────────────────────

  Widget _buildSearchField() {
    final loc = AppLocalizations.of(context)!;
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
              hintText: loc.searchByNamePlaceCode,
              hintStyle:
                  const TextStyle(color: Colors.black38, fontSize: 14),
              prefixIcon: const Icon(Icons.search,
                  color: Colors.black45, size: 20),
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
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 3)),
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
                              bottom: BorderSide(
                                  color: Colors.grey.shade200)),
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
    final place = s['address'] ?? s['district'] ?? '';
    return place.toString().isNotEmpty ? '$name — $place' : name.toString();
  }
}

// ─────────────────────────────────────────────
//  Last Visited Card
// ─────────────────────────────────────────────
class _LastVisitedCard extends StatelessWidget {
  final Map<String, dynamic> snapshot;
  final VoidCallback onTap;
  final Color green;

  const _LastVisitedCard({
    required this.snapshot,
    required this.onTap,
    required this.green,
  });

  @override
  Widget build(BuildContext context) {
    final store = Map<String, dynamic>.from(snapshot['store_info'] ?? {});
    final lastUpdated = snapshot['last_updated'] as String? ?? '';
    final timeAgo = lastUpdated.isNotEmpty
        ? StorageService.getTimeAgo(lastUpdated)
        : 'Unknown';
    final name = store['name'] ?? 'Unknown Store';
    final district = store['district'] ?? '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.history, size: 15, color: Colors.grey.shade500),
            const SizedBox(width: 4),
            Text(
              AppLocalizations.of(context)!.lastVisited,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: green.withValues(alpha: 0.25)),
              boxShadow: [
                BoxShadow(
                    color: green.withValues(alpha: 0.06),
                    blurRadius: 8,
                    offset: const Offset(0, 2)),
              ],
            ),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                      color: green.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.store, color: green, size: 22),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w700),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 3),
                      Row(
                        children: [
                          if (district.isNotEmpty) ...[
                            Icon(Icons.location_on,
                                size: 12, color: Colors.grey.shade500),
                            const SizedBox(width: 2),
                            Text(district,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey.shade500)),
                            const SizedBox(width: 8),
                          ],
                          Icon(Icons.access_time,
                              size: 12, color: Colors.grey.shade400),
                          const SizedBox(width: 2),
                          Text(timeAgo,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey.shade400)),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.arrow_forward_ios, size: 14, color: green),
                    const SizedBox(height: 2),
                    Text(
                      AppLocalizations.of(context)!.viewStock,
                      style: TextStyle(
                          fontSize: 11,
                          color: green,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ─────────────────────────────────────────────
//  Results Page
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
    final loc = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(loc.allSupplycoOutlets,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
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
                    Icon(Icons.location_on, color: widget.green, size: 18),
                    const SizedBox(width: 6),
                    Text(
                      widget.district != null
                          ? loc.district(widget.district!)
                          : loc.allDistrictsLabel,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    const SizedBox(width: 8),
                    Container(
                        width: 1,
                        height: 16,
                        color: Colors.grey.shade300),
                    const SizedBox(width: 8),
                    Text(loc.outletFound(widget.results.length),
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black54)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, bottom: 4),
                child: Text(loc.sortedByDistance,
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade500)),
              ),
              OutlinedButton.icon(
                onPressed: () =>
                    setState(() => _sortByDistance = !_sortByDistance),
                icon: const Icon(Icons.swap_vert, size: 16),
                label: Text(loc.sort),
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
        Expanded(
          child: ListView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            itemCount: _displayed.length + 1,
            itemBuilder: (context, index) {
              if (index == _displayed.length) return _buildFooter();
              return _buildStoreCard(_displayed[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildStoreCard(Map<String, dynamic> store) {
    final loc = AppLocalizations.of(context)!;
    final name = store['name'] ?? 'Unknown Store';
    final place = store['address'] ?? store['district'] ?? '';
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
                          ? AppLocalizations.of(context)!
                              .kmAway(distance.toString())
                          : AppLocalizations.of(context)!.kmAway('2.0'),
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
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 6),
              textStyle: const TextStyle(fontSize: 13),
            ),
            child: Text('${loc.viewStock} >'),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    final loc = AppLocalizations.of(context)!;
    if (widget.results.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
            child: Text(loc.noOutletsFound,
                style: const TextStyle(color: Colors.black54))),
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
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.viewMoreOutlets,
                style: const TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black87),
              ),
            ),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Center(
        child: Text(loc.loadingMoreOutlets,
            style: const TextStyle(
                fontSize: 13, color: Colors.black38)),
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  Search Illustration
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
          Container(
            width: 170,
            height: 170,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: green.withValues(alpha: 0.07)),
          ),
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
                      borderRadius: BorderRadius.circular(4)),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  height: 8,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(4)),
                ),
                const SizedBox(height: 8),
                Icon(Icons.location_on, color: green, size: 24),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 30,
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2))
                ],
              ),
              child: Icon(Icons.search, color: green, size: 26),
            ),
          ),
          Positioned(
            left: 8,
            top: 40,
            child: Container(
              width: 40,
              height: 30,
              decoration: BoxDecoration(
                  color: green.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8)),
              child:
                  Icon(Icons.chat_bubble_outline, color: green, size: 18),
            ),
          ),
        ],
      ),
    );
  }
}