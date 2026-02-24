import 'package:flutter/material.dart';

// Commodity model to represent each stock item
class Commodity {
  final String id;
  final String name;
  final String quantity;
  final String status; // 'available', 'low_stock', 'out_of_stock'

  Commodity({
    required this.id,
    required this.name,
    required this.quantity,
    required this.status,
  });
}

class StockPage extends StatefulWidget {
  final String supplyCOName; // Supply co name passed from homepage

  const StockPage({super.key, required this.supplyCOName});

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage>
    with SingleTickerProviderStateMixin {
  // Search controller
  TextEditingController searchController = TextEditingController();

  // Tab controller for Stock Items / Special Items
  late TabController tabController;

  // Sample commodity data (will be fetched from backend later)
  List<Commodity> commodities = [
    Commodity(
      id: '1',
      name: 'Matta Rice',
      quantity: '500+ kg',
      status: 'available',
    ),
    Commodity(
      id: '2',
      name: 'Wheat Flour',
      quantity: '250 kg',
      status: 'available',
    ),
    Commodity(
      id: '3',
      name: 'Coconut Oil',
      quantity: '200+ L',
      status: 'available',
    ),
    Commodity(id: '4', name: 'Sugar', quantity: '802 mL', status: 'low_stock'),
    Commodity(
      id: '5',
      name: 'White Rice',
      quantity: '100 kg',
      status: 'available',
    ),
    Commodity(
      id: '6',
      name: 'Jaggery',
      quantity: '100 kg',
      status: 'out_of_stock',
    ),
  ];

  // Filtered commodities based on search
  List<Commodity> filteredCommodities = [];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    filteredCommodities = commodities; // Initially show all
  }

  @override
  void dispose() {
    searchController.dispose();
    tabController.dispose();
    super.dispose();
  }

  // Function to filter commodities based on search
  void filterCommodities(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredCommodities = commodities;
      } else {
        filteredCommodities = commodities
            .where(
              (commodity) =>
                  commodity.name.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      }
    });
  }

  // Function to get color based on stock status
  Color getStatusColor(String status) {
    switch (status) {
      case 'available':
        return Colors.green;
      case 'low_stock':
        return Colors.orange;
      case 'out_of_stock':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  // Function to get status text
  String getStatusText(String status) {
    switch (status) {
      case 'available':
        return 'Available';
      case 'low_stock':
        return 'Low Stock';
      case 'out_of_stock':
        return 'Out of Stock';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B5E20), // Dark green color
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                widget.supplyCOName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        actions: [IconButton(icon: Icon(Icons.unfold_more), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Updated text
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, color: Colors.grey, size: 20),
                  SizedBox(width: 8),
                  Text(
                    'Last updated 10 minutes ago',
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                ],
              ),
            ),

            // Search bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                controller: searchController,
                onChanged: filterCommodities,
                decoration: InputDecoration(
                  hintText: 'Search commodities',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),

            // Tabs: Stock Items and Special Items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[300]!),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TabBar(
                  controller: tabController,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    color: Color(0xFF2E7D32), // Green color for selected tab
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        'Stock Items',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Special',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // ListView.builder for commodities
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: filteredCommodities.length,
                itemBuilder: (context, index) {
                  Commodity commodity = filteredCommodities[index];
                  return CommodityCard(
                    commodity: commodity,
                    statusColor: getStatusColor(commodity.status),
                    statusText: getStatusText(commodity.status),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// Widget to display individual commodity card
class CommodityCard extends StatelessWidget {
  final Commodity commodity;
  final Color statusColor;
  final String statusText;

  const CommodityCard({
    required this.commodity,
    required this.statusColor,
    required this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Image placeholder
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(
                Icons.image_not_supported,
                color: Colors.grey[600],
                size: 40,
              ),
            ),
          ),
          SizedBox(width: 16),

          // Commodity details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  commodity.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  commodity.quantity,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                SizedBox(height: 12),

                // Status badge
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    statusText,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
