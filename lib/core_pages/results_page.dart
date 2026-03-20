// results_page.dart
// ─────────────────────────────────────────────
//  Results Page — extracted from homepage.dart
// ─────────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

class ResultsPage extends StatefulWidget {
  final List<Map<String, dynamic>> results;
  final String? district;
  final VoidCallback onBack;
  final void Function(Map<String, dynamic>) onViewStock;
  final Color green;

  const ResultsPage({
    super.key,
    required this.results,
    required this.district,
    required this.onBack,
    required this.onViewStock,
    required this.green,
  });

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  static const _pageSize = 7;
  int _displayCount = _pageSize;
  bool _sortByDistance = true;

  List<Map<String, dynamic>> get _sorted {
    final list = [...widget.results];
    if (_sortByDistance) {
      list.sort((a, b) {
        final da = (a['distance_km'] ?? double.infinity) as num;
        final db = (b['distance_km'] ?? double.infinity) as num;
        return da.compareTo(db);
      });
    }
    return list;
  }

  List<Map<String, dynamic>> get _displayed =>
      _sorted.take(_displayCount).toList();

  bool get _hasMore => _displayCount < widget.results.length;

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildHeader(loc),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
            itemCount: _displayed.length + 1,
            itemBuilder: (context, index) {
              if (index == _displayed.length) return _buildFooter(loc);
              return _buildStoreCard(_displayed[index]);
            },
          ),
        ),
      ],
    );
  }

  // ── Header ─────────────────────────────────────────────────────────────────

  Widget _buildHeader(AppLocalizations loc) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            loc.allSupplycoOutlets,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _LocationPill(
                district: widget.district,
                green: widget.green,
                loc: loc,
              ),
              const SizedBox(width: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: widget.green.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  loc.outletFound(widget.results.length),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: widget.green,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.sort_rounded, size: 14, color: Colors.grey.shade500),
              const SizedBox(width: 4),
              Text(
                loc.sortedByDistance,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
              ),
              const Spacer(),
              _SortChip(
                sortByDistance: _sortByDistance,
                green: widget.green,
                label: loc.sort,
                onTap: () =>
                    setState(() => _sortByDistance = !_sortByDistance),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ── Store Card ─────────────────────────────────────────────────────────────

  Widget _buildStoreCard(Map<String, dynamic> store) {
    final loc = AppLocalizations.of(context)!;
    final name = store['name'] ?? 'Unknown Store';
    final place = store['address'] ?? store['district'] ?? '';
    final distance = store['distance_km'];
    final distanceText = distance != null
        ? loc.kmAway(distance.toString())
        : loc.kmAway('2.0');

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: InkWell(
          borderRadius: BorderRadius.circular(14),
          onTap: () => widget.onViewStock(store),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: widget.green.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.storefront_rounded,
                    color: widget.green,
                    size: 22,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        place.toString().isNotEmpty
                            ? '$name – $place'
                            : name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.location_on_rounded,
                              size: 12, color: Colors.grey.shade500),
                          const SizedBox(width: 3),
                          Text(
                            distanceText,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 14, vertical: 8),
                  decoration: BoxDecoration(
                    color: widget.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    loc.viewStock,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ── Footer ─────────────────────────────────────────────────────────────────

  Widget _buildFooter(AppLocalizations loc) {
    if (widget.results.isEmpty) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.store_mall_directory_outlined,
                size: 48, color: Colors.grey.shade300),
            const SizedBox(height: 12),
            Text(
              loc.noOutletsFound,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }
    if (_hasMore) {
      return Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 8),
        child: TextButton(
          onPressed: () => setState(() => _displayCount += _pageSize),
          style: TextButton.styleFrom(
            foregroundColor: widget.green,
            minimumSize: const Size.fromHeight(48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: widget.green.withOpacity(0.35)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                loc.viewMoreOutlets,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: widget.green,
                ),
              ),
              const SizedBox(width: 6),
              Icon(Icons.keyboard_arrow_down_rounded,
                  size: 18, color: widget.green),
            ],
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 40, height: 1, color: Colors.grey.shade200),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              loc.loadingMoreOutlets,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
            ),
          ),
          Container(width: 40, height: 1, color: Colors.grey.shade200),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
//  Private sub-widgets (file-scoped)
// ─────────────────────────────────────────────

class _LocationPill extends StatelessWidget {
  final String? district;
  final Color green;
  final AppLocalizations loc;

  const _LocationPill({
    required this.district,
    required this.green,
    required this.loc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.location_on_rounded, color: green, size: 14),
          const SizedBox(width: 4),
          Text(
            district != null ? loc.district(district!) : loc.allDistrictsLabel,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class _SortChip extends StatelessWidget {
  final bool sortByDistance;
  final Color green;
  final String label;
  final VoidCallback onTap;

  const _SortChip({
    required this.sortByDistance,
    required this.green,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: sortByDistance ? green : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: sortByDistance ? green : Colors.grey.shade300,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.swap_vert_rounded,
              size: 14,
              color: sortByDistance ? Colors.white : Colors.black54,
            ),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: sortByDistance ? Colors.white : Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}