// Import the Flutter material package — this gives us access to all
// Flutter's UI widgets like Scaffold, AppBar, TextField, Checkbox, etc.
import 'package:flutter/material.dart';
import 'package:supply_co/core_pages/homepage.dart';

// The main entry point of the app.
// runApp() starts the Flutter app by inflating the given widget as the root.

// WhatsAppAlertsPage is a StatefulWidget because the UI changes based on
// user interaction (checkboxes being ticked/unticked).
// StatefulWidget = widget that can hold mutable state (data that changes).
class WhatsAppAlertsPage extends StatefulWidget {
  const WhatsAppAlertsPage({super.key});

  // createState() is required for every StatefulWidget.
  // It creates the companion State object where the actual logic lives.
  @override
  State<WhatsAppAlertsPage> createState() => _WhatsAppAlertsPageState();
}

// _WhatsAppAlertsPageState holds all the mutable data for WhatsAppAlertsPage.
// The underscore (_) means it's private to this file.
class _WhatsAppAlertsPageState extends State<WhatsAppAlertsPage> {
  // A TextEditingController lets us read and control the text inside a TextField.
  // We'll use it to get the phone number the user types.
  final TextEditingController _phoneController = TextEditingController();

  // The full list of 13 commodity names to display as checkboxes.
  final List<String> _commodities = [
    'Rice',
    'Sugar',
    'Coconut Oil',
    'Wheat',
    'Dal (Toor)',
    'Dal (Moong)',
    'Mustard Oil',
    'Salt',
    'Onion',
    'Potato',
    'Tomato',
    'Milk',
    'Atta (Flour)',
  ];

  // A single boolean to track the "Notify me about special offers" checkbox.
  // Starts as false (unchecked) just like the commodity checkboxes.
  bool _notifySpecialOffers = false;

  // A parallel list of booleans tracking which checkboxes are checked.
  // List.generate creates a list of 13 items, all set to 'false' initially.
  // Index 0 = Rice (false), Index 1 = Sugar (false), ... etc.
  late List<bool> _selectedItems;

  // initState() is called ONCE when the widget is inserted into the tree.
  // It's the right place to initialize data that depends on the widget.
  @override
  void initState() {
    super.initState(); // Always call super.initState() first
    // Initialize all 13 commodity checkboxes as unchecked (false)
    _selectedItems = List.generate(_commodities.length, (_) => false);
  }

  // A computed property (getter) that returns true only if ALL items are checked.
  // We use this to decide whether the "Select All" checkbox should be checked.
  bool get _allSelected => _selectedItems.every((item) => item == true);

  // A computed property that returns true if SOME (but not all) items are checked.
  // This controls the "indeterminate" state of the Select All checkbox.
  bool get _someSelected => _selectedItems.any((item) => item == true) && !_allSelected;

  // This method is called when the user taps the "Select All / Deselect All" checkbox.
  // setState() tells Flutter to rebuild the widget with the new values.
  void _toggleSelectAll(bool? value) {
    setState(() {
      // If value is true (user checked "select all"), mark everything as true.
      // Otherwise mark everything as false.
      for (int i = 0; i < _selectedItems.length; i++) {
        _selectedItems[i] = value ?? false;
      }
    });
  }

  // This method is called when a single commodity checkbox is toggled.
  // 'index' tells us which commodity was toggled.
  // 'value' is the new boolean value (true = checked, false = unchecked).
  void _toggleItem(int index, bool? value) {
    setState(() {
      _selectedItems[index] = value ?? false;
    });
  }

  // dispose() is called when this widget is permanently removed from the tree.
  // We must dispose the controller to free memory and avoid memory leaks.
  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose(); // Always call super.dispose() last
  }

  // build() describes what the UI looks like at any given moment.
  // Flutter calls this whenever setState() is called.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic page structure: AppBar + Body + FAB etc.

      // ─── APP BAR ───────────────────────────────────────────────────────────
      appBar: AppBar(
        
        // backgroundColor sets the AppBar's fill color to the dark green
        backgroundColor: const Color(0xFF1A5C2A),

        // The back arrow icon on the left
        leading: const Icon(
          Icons.arrow_back, // Left-pointing arrow icon
          color: Colors.white, // White icon to contrast against dark green
        ),

        // The title text shown in the center/left of the AppBar
        title: const Text(
          
          'Get WhatsApp Alerts',
          style: TextStyle(
            color: Colors.white,   // White text
            fontWeight: FontWeight.w600, // Semi-bold
            fontSize: 18,
          ),
        ),
        centerTitle: true,

        // elevation: 0 removes the shadow below the AppBar for a flat look
        elevation: 0,
      ),

      // ─── BODY ──────────────────────────────────────────────────────────────
      // SingleChildScrollView makes the entire body scrollable when content
      // is taller than the screen. This is important for smaller phones.
      body: SingleChildScrollView(
        // padding adds space around the scrollable content
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),

        // Column arranges its children vertically, one below the other
        child: Column(
          // crossAxisAlignment.start aligns children to the LEFT edge of the column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ── Descriptive text at the top ──────────────────────────────────
            const Text(
              'Receive a WhatsApp message when stock arrives at this store.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black87, // Slightly off-black for softer look
                height: 1.4,           // Line height (1.4x the font size)
              ),
            ),

            // SizedBox is an empty box used purely for spacing
            const SizedBox(height: 16),

            // ── Phone Number TextField ────────────────────────────────────────
            // Container gives us a box with a border and rounded corners
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF2F2F2), // Very light grey background
                borderRadius: BorderRadius.circular(8), // Rounded corners
                border: Border.all(
                  color: const Color(0xFFDDDDDD), // Light grey border line
                ),
              ),

              // Row arranges children horizontally (left to right)
              child: Row(
                children: [
                  // ── Country code section (+91 and Indian flag) ────────────
                  // Padding adds inner spacing around the country code section
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                    child: Row(
                      // mainAxisSize.min makes the row as small as its content
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // The +91 text (India's country code)
                        const Text(
                          '+91',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(width: 8),

                        // The Indian flag emoji rendered as a Text widget
                        // Flutter renders regional indicator emojis correctly
                        const Text(
                          '🇮🇳',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),

                  // A thin vertical divider line between flag and input field
                  Container(
                    width: 1,           // 1 pixel wide
                    height: 40,         // 40 pixels tall
                    color: const Color(0xFFCCCCCC), // Light grey divider
                  ),

                  // Expanded makes the TextField take all remaining horizontal space
                  Expanded(
                    child: TextField(
                      controller: _phoneController, // Link the controller
                      keyboardType: TextInputType.phone, // Show number keyboard on mobile
                      decoration: const InputDecoration(
                        hintText: 'Enter Whatsapp Number', // Placeholder text
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        // Remove all default borders from TextField (we drew our own)
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 14),

            // ── Disclaimer text below the phone field ─────────────────────
            const Text(
              'By continuing,you agree to receive Whatsapp messages related stock updates.',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54, // Lighter grey to de-emphasise
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),

            // ── Commodities selection container ───────────────────────────
            // This Container holds the list of checkboxes and the "select all" checkbox.
            // We give it a fixed height so it scrolls internally rather than expanding
            // the whole page.
            Container(
              // Fixed height creates the internal scrollable area
              height: 320,
              decoration: BoxDecoration(
                color: const Color(0xFFF7F7F7), // Slightly grey background
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xFFDDDDDD),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // ── Row 1: Section label text ─────────────────────────
                  const Padding(
                    padding: EdgeInsets.fromLTRB(14, 10, 14, 4),
                    child: Text(
                      'Select items you want alerts for (optional)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  // ── Row 2: Select All checkbox aligned to the RIGHT ────
                  // This is a completely separate row below the text above.
                  // Row + MainAxisAlignment.end pushes all children to the right.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      // InkWell makes the label + checkbox tappable together
                      InkWell(
                        onTap: () => _toggleSelectAll(!_allSelected),
                        borderRadius: BorderRadius.circular(8),
                        child: Row(
                          // mainAxisSize.min shrinks the row to wrap its children only,
                          // preventing it from stretching across the full width
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Label sits to the LEFT of the checkbox
                            Text(
                              _allSelected ? 'Deselect All' : 'Select All',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            // Checkbox sits at the far RIGHT
                            Checkbox(
                              tristate: true,
                              value: _allSelected
                                  ? true
                                  : _someSelected
                                      ? null
                                      : false,
                              onChanged: _toggleSelectAll,
                              activeColor: const Color(0xFF1A5C2A),
                              visualDensity: VisualDensity.compact,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              side: const BorderSide(
                                color: Color(0xFF1A5C2A),
                                width: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  // A thin horizontal line separating header from list
                  const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),

                  // ── Scrollable commodity list ────────────────────────────
                  // Expanded tells this widget to take all remaining vertical
                  // space inside the Column (after the header and divider).
                  Expanded(
                    child: ListView.separated(
                      // shrinkWrap: false (default) — ListView takes all available height.
                      // Since it's inside an Expanded, this is correct.
                      padding: EdgeInsets.zero, // Remove default ListView padding

                      // itemCount = number of items in the list (13 commodities)
                      itemCount: _commodities.length,

                      // separatorBuilder draws a divider BETWEEN each item (not after last)
                      separatorBuilder: (context, index) => const Divider(
                        height: 1,
                        thickness: 1,
                        color: Color(0xFFE8E8E8),
                        indent: 14, // Start the divider 14px from the left
                      ),

                      // itemBuilder is called for each index 0..12 to build each row
                      itemBuilder: (context, index) {
                        return _buildCommodityTile(index);
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Space between the container and the special offers checkbox
            const SizedBox(height: 16),

            // ── "Notify me about special offers" checkbox ─────────────────
            // InkWell wraps the entire row so tapping anywhere on the row
            // (label OR checkbox) toggles the state — same UX as the commodity rows.
            InkWell(
              onTap: () {
                // setState() triggers a rebuild so the checkbox visually updates
                setState(() {
                  _notifySpecialOffers = !_notifySpecialOffers;
                });
              },
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                // A little vertical padding so the tap target isn't too tight
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    // The checkbox — same visual style as the commodity checkboxes
                    Checkbox(
                      // Bound to _notifySpecialOffers — true = checked, false = unchecked
                      value: _notifySpecialOffers,
                      onChanged: (value) {
                        setState(() {
                          // value can technically be null (though it won't be here
                          // because tristate is false), so ?? false is a safe fallback
                          _notifySpecialOffers = value ?? false;
                        });
                      },
                      activeColor: const Color(0xFF1A5C2A), // Green fill when checked
                      shape: RoundedRectangleBorder(
                        // Circular radius makes it look like a round checkbox
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: const BorderSide(
                        color: Color(0xFF1A5C2A), // Green border when unchecked
                        width: 2,
                      ),
                    ),


                    // The label text next to the checkbox
                    const Text(
                      'Notify me about special offers',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(221, 59, 58, 58),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Space between the special offers row and the button
            const SizedBox(height: 12),

            // ── Enable WhatsApp Alerts Button ──────────────────────────────
            // SizedBox.expand + width: double.infinity makes the button full width
            SizedBox(
              width: double.infinity, // Stretch to full available width
              height: 52,             // Fixed height for the button
              child: ElevatedButton(
                onPressed: () async {
                  if (_phoneController.text.isEmpty) {
                    // Show an error if the phone number field is empty
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter your WhatsApp number.'),
                     //   backgroundColor: Colors.redAccent,
                      ),
                    );
                    return; // Don't proceed if no phone number
                  }
                  if(_phoneController.text.length != 10 || !_phoneController.text.contains(RegExp(r'^[0-9]+$'))){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a valid 10-digit phone number.'),
                     //   backgroundColor: Colors.redAccent,
                      ),
                    );
                    return; // Don't proceed if phone number is invalid
                  }
                  if(_allSelected || _someSelected || _notifySpecialOffers){
                    ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('WhatsApp Alerts enabled!'),
      // duration controls how long the snackbar stays visible.
      // Default is 4 seconds — we keep it short so navigation feels snappy.
      duration: Duration(seconds: 2),
    ),
  );

  // ── Wait for the snackbar to finish, then navigate back ───────
  // await Future.delayed() pauses execution here for 2 seconds —
  // exactly matching the snackbar duration above — so the user can
  // read the confirmation before the screen changes.
  await Future.delayed(const Duration(seconds: 2));

  // mounted check: since we used 'await' above, time has passed.
  // The user could have manually navigated away during those 2 seconds.
  // Calling Navigator on an unmounted widget throws an error, so we check first.
  if (!mounted) return;

  // Navigator.pushAndRemoveUntil() navigates to HomePage AND removes
  // every screen below it from the navigation stack.
  // This means pressing the back button on HomePage won't return here.
  // (route) => false means "remove ALL previous routes from the stack".
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
    (route) => false,
  );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please select at least one commodity for alerts.'),
                    //  backgroundColor: Colors.orangeAccent,
                    ),
                  );
                  }
                  // TODO: Add backend call here when ready
                  // For now, just show a snackbar confirmation
                  
                },
                style: ElevatedButton.styleFrom(
                  // Button fill color — dark green matching the AppBar
                  backgroundColor: const Color(0xFF1A5C2A),

                  // foregroundColor = text/icon color inside the button
                  foregroundColor: Colors.white,

                  // shape gives the button rounded corners (pill/stadium-like)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),

                  // elevation adds a subtle shadow below the button
                  elevation: 2,
                ),
                child: const Text(
                  'Enable Whatsapp Alerts',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
            ),

            // A little breathing room at the very bottom of the scroll view
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // ─── HELPER: Build a single commodity row ─────────────────────────────────
  // This is extracted into its own method to keep build() clean and readable.
  // It returns a Widget representing one checkbox row.
  Widget _buildCommodityTile(int index) {
    return InkWell(
      // InkWell adds a tap ripple effect over the entire row
      onTap: () => _toggleItem(index, !_selectedItems[index]),

      child: Padding(
        // Padding inside each row for comfortable tap area
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
        child: Row(
          children: [
            // Checkbox widget — the square tickbox
            Checkbox(
              value: _selectedItems[index], // true = checked, false = unchecked

              // Called when the checkbox itself is tapped
              onChanged: (value) => _toggleItem(index, value),

              // activeColor = color of the checkbox when it IS checked
              activeColor: const Color(0xFF1A5C2A),

              // shape gives the checkbox rounded corners (looks like image)
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Fully circular = circle checkbox
              ),

              // side defines the border when the checkbox is UNchecked
              side: const BorderSide(
                color: Color(0xFF1A5C2A), // Green border
                width: 2,
              ),
            ),

            const SizedBox(width: 4), // Small gap between checkbox and text

            // The commodity name label
            Text(
              _commodities[index], // e.g. "Rice", "Sugar", etc.
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black87,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

}