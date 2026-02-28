import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supply_co/intro_pages/auth_page.dart';
import 'package:supply_co/other_pages/accessibility.dart';
import 'package:supply_co/other_pages/help_support.dart';
import 'package:supply_co/other_pages/manage_alerts.dart';
import 'package:supply_co/other_pages/privacy_policy.dart';
import 'package:supply_co/other_pages/terms_conditions.dart';

// Import your existing pages.
// Adjust the paths to match your actual project folder structure.

// Import the language dialog we created as a separate file.
import 'language_dialog.dart';

// ─────────────────────────────────────────────────────────────────────────────
// ProfileSettingsPage
//
// StatefulWidget because we fetch user data from Supabase on page load,
// which requires setState() to update the UI once the data arrives.
// ─────────────────────────────────────────────────────────────────────────────
class ProfileSettingsPage extends StatefulWidget {
  const ProfileSettingsPage({super.key});

  @override
  State<ProfileSettingsPage> createState() => _ProfileSettingsPageState();
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  // _isLoading: true while we are fetching user data from Supabase.
  // The profile card shows a shimmer/placeholder until this becomes false.
  bool _isLoading = true;

  // _name and _phone hold the values fetched from user_details table.
  // They start as null and get filled in once the fetch completes.
  String? _name;
  String? _phone;

  // _selectedLanguage stores whichever language the user picks in the dialog.
  // Starts as English by default. Update this to/from your DB when ready.
  String _selectedLanguage = 'English';

  // ── Lifecycle ─────────────────────────────────────────────────────────────

  @override
  void initState() {
    super.initState();
    // Kick off the Supabase fetch as soon as the page is inserted into the tree.
    // We cannot use async/await directly in initState, so we call a helper method.
    _loadUserDetails();
  }

  // ── Supabase fetch ────────────────────────────────────────────────────────

  // Fetches 'name' and 'phone' from the user_details table for the
  // currently logged-in user (where user_details.id == auth.uid()).
  Future<void> _loadUserDetails() async {
    try {
      // auth.currentUser gives us the logged-in user object.
      // It is null if nobody is signed in.
      final user = Supabase.instance.client.auth.currentUser;

      if (user == null) {
        // No logged-in user → stay as guest, just stop loading.
        if (mounted) setState(() => _isLoading = false);
        return;
      }

      // Query user_details table:
      //   .select('name, phone') — only fetch the two columns we need
      //   .eq('id', user.id)     — filter: row where id = logged-in user's uid
      //   .maybeSingle()         — returns one Map or null (no exception if missing)
      final data = await Supabase.instance.client
          .from('user_details')
          .select('name, phone_number')
          .eq('id', user.id)
          .maybeSingle();

      // If a row was found, extract name and phone.
      // data is a Map<String, dynamic> like {'name': 'Sam', 'phone': '9876554321'}
      if (mounted) {
        setState(() {
          _name = data?['name']?.toString().toUpperCase();
          _phone = data?['phone']?.toString();
          _isLoading = false;
        });
      }
    } catch (e) {
      // On any error (network, permission etc.), silently fall back to guest.
      debugPrint('Error loading user details: $e');
      if (mounted) setState(() => _isLoading = false);
    }
  }

  // ── Phone masking helper ──────────────────────────────────────────────────

  // '9876554321' → '+91******4321'
  // Strips non-digits, keeps last 4 visible, masks everything before them.
  String _maskedPhone(String phone) {
    final digits = phone.replaceAll(RegExp(r'\D'), '');
    if (digits.length < 5) return '+91$digits';
    final last4 = digits.substring(digits.length - 4);
    final masked = '*' * (digits.length - 4);
    return '+91$masked$last4';
  }

  // ── Build ─────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    // Derive display values:
    //   - If _name is null (guest or not yet loaded), show 'Guest'
    //   - avatarLetter: first char of name, 'G' for Guest
    //   - phone: masked if available, empty string otherwise
    final String name = _name ?? 'GUEST USER';
    final String avatarLetter = name.isNotEmpty ? name[0].toUpperCase() : 'G';
    final String phone = (_phone != null && _phone!.isNotEmpty)
        ? _maskedPhone(_phone!)
        : '';

    return Scaffold(
      // ─── APP BAR ───────────────────────────────────────────────────────
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A5C2A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          // Navigator.pop() goes back to whichever page called this one
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Profile & Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      backgroundColor: Colors.white,

      // ─── BODY ──────────────────────────────────────────────────────────
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile card — shows spinner while loading, data after
            _isLoading
                ? _buildProfileCardLoading()
                : _buildProfileCard(avatarLetter, name, phone),

            const SizedBox(height: 28),

            // "Settings" section label
            const Text(
              'Settings',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 12),

            // ── Container 1: Set Profile + Manage Alerts ────────────────
            _buildSettingsGroup([
              _SettingsItem(
                icon: Icons.person_outline,
                iconColor: const Color(0xFF5B8DEF),
                label: 'Set Profile',
                onTap: () {
                  // Navigate to AuthPage using push (NOT pushReplacement) so
                  // the back arrow on AuthPage returns here to Settings.
                  // On the normal app launch flow, splashscreen uses
                  // pushReplacement to AuthPage (no back). Here we use push
                  // so the user CAN come back.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AuthPage()),
                  );
                },
              ),
              _SettingsItem(
                icon: Icons.notifications_none,
                iconColor: const Color(0xFFF5A623),
                label: 'Manage Alerts',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ManageAlertsPage()),
                  );
                },
              ),
            ]),

            const SizedBox(height: 14),

            // ── Container 2: Language + Accessibility ───────────────────
            _buildSettingsGroup([
              _SettingsItem(
                icon: Icons.language,
                iconColor: const Color(0xFF5B8DEF),
                label: 'Language',
                onTap: () {
                  // Show the LanguageDialog (defined in language_dialog.dart).
                  // showDialog() displays it as an overlay above the current page.
                  // We await the result — the dialog returns the chosen language
                  // string (or null if the user dismissed without choosing).
                  showDialog<String>(
                    context: context,
                    builder: (_) =>
                        LanguageDialog(currentLanguage: _selectedLanguage),
                  ).then((chosen) {
                    // 'chosen' is the language string returned by the dialog,
                    // or null if the user tapped outside / pressed Cancel.
                    if (chosen != null && chosen != _selectedLanguage) {
                      setState(() => _selectedLanguage = chosen);
                      // TODO: Save _selectedLanguage to your database here.
                      debugPrint('Language changed to: $_selectedLanguage');
                    }
                  });
                },
              ),
              _SettingsItem(
                icon: Icons.accessibility_new_outlined,
                iconColor: const Color(0xFF1A5C2A),
                label: 'Accessibility',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AccessibilityPage(),
                    ),
                  );
                },
              ),
            ]),

            const SizedBox(height: 14),

            // ── Container 3: Help & Support + Terms + Privacy ───────────
            _buildSettingsGroup([
              _SettingsItem(
                icon: Icons.help_outline,
                iconColor: Colors.grey,
                label: 'Help & Support',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HelpSupportPage()),
                  );
                },
              ),
              _SettingsItem(
                icon: Icons.description_outlined,
                iconColor: Colors.grey,
                label: 'Terms & Conditions',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const TermsConditionsPage(),
                    ),
                  );
                },
              ),
              _SettingsItem(
                icon: Icons.privacy_tip_outlined,
                iconColor: Colors.grey,
                label: 'Privacy Policy',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),
            ]),

            const SizedBox(height: 14),

            // ── Log Out ─────────────────────────────────────────────────
            _buildLogoutButton(context),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // ── HELPER: Profile card loading placeholder ────────────────────────────
  // Shown while _isLoading is true so the page doesn't jump when data arrives.
  Widget _buildProfileCardLoading() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: const Row(
        children: [
          // Grey circle placeholder for the avatar
          CircleAvatar(radius: 28, backgroundColor: Color(0xFFEEEEEE)),
          SizedBox(width: 14),
          // Small spinner to indicate loading
          SizedBox(
            width: 18,
            height: 18,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: Color(0xFF1A5C2A),
            ),
          ),
        ],
      ),
    );
  }

  // ── HELPER: Profile card with real data ─────────────────────────────────
  Widget _buildProfileCard(String avatarLetter, String name, String phone) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Avatar circle with first letter of name
          CircleAvatar(
            radius: 28,
            backgroundColor: const Color(0xFFD6E4FF),
            child: Text(
              avatarLetter,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF3B5BDB),
              ),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                  ),
                ),

                // Phone — only shown when available
                if (phone.isNotEmpty) ...[
                  const SizedBox(height: 3),
                  Text(
                    phone,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      letterSpacing: 0.4,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ── HELPER: Settings group container ────────────────────────────────────
  // Wraps any list of _SettingsItem rows in a single rounded container
  // with dividers between items (not after the last one).
  Widget _buildSettingsGroup(List<_SettingsItem> items) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE0E0E0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: List.generate(items.length, (index) {
          return Column(
            children: [
              _buildSettingsRow(items[index]),
              if (index < items.length - 1)
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFFF0F0F0),
                  indent: 52,
                ),
            ],
          );
        }),
      ),
    );
  }

  // ── HELPER: Single settings row ─────────────────────────────────────────
  // [icon]  [label]  [chevron >]
  Widget _buildSettingsRow(_SettingsItem item) {
    return InkWell(
      onTap: item.onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Row(
          children: [
            Icon(item.icon, color: item.iconColor, size: 22),
            const SizedBox(width: 14),
            Expanded(
              child: Text(
                item.label,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.black38, size: 20),
          ],
        ),
      ),
    );
  }

  // ── HELPER: Log Out button ───────────────────────────────────────────────
  Widget _buildLogoutButton(BuildContext context) {
    return InkWell(
      onTap: () async {
        try {
          // Sign the user out from Supabase.
          // This invalidates their session token on the server side.
          await Supabase.instance.client.auth.signOut();
        } catch (e) {
          debugPrint('Sign out error: $e');
        }

        // mounted check: signOut() is async, so the widget could have been
        // disposed while we were waiting. Always check before using context.
        if (!mounted) return;

        // pushAndRemoveUntil navigates to AuthPage AND clears the entire
        // navigation stack. This prevents the user from pressing back and
        // returning to a page that requires authentication.
        // (route) => false means "remove every route in the stack".
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => const AuthPage()),
          (route) => false,
        );
      },
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xFFE0E0E0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 4,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Log out',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.redAccent,
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// DATA MODEL: _SettingsItem
// Plain Dart class holding the data for one row in a settings group.
// VoidCallback = a function type: no arguments, returns nothing.
// ─────────────────────────────────────────────────────────────────────────────
class _SettingsItem {
  final IconData icon;
  final Color iconColor;
  final String label;
  final VoidCallback onTap;

  const _SettingsItem({
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.onTap,
  });
}
