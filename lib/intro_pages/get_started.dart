import 'package:flutter/material.dart';
import 'package:supply_co/core_pages/homepage.dart';
import 'package:supply_co/intro_pages/auth_page.dart';
import 'package:supply_co/services/local_storage_service.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted>
    with SingleTickerProviderStateMixin {
  // ── Colour constants ────────────────────────────────────────────────────
  static const _orange = Color(0xFFE87830);
  static const _green = Color(0xFF1B4D3E);
  static const _lightOrange = Color(0xFFFDE8D0);

  // ── Animation ───────────────────────────────────────────────────────────
  late final AnimationController _ctrl;

  // App name: fades + slides in during the first 60 % of the timeline
  late final Animation<double> _nameOpacity;
  late final Animation<Offset> _nameSlide;

  // Title: fades + slides in starting at 30 % — creates a clean stagger
  late final Animation<double> _titleOpacity;
  late final Animation<Offset> _titleSlide;

  // ── Language state ───────────────────────────────────────────────────────
  String _selectedLanguage = 'English';
  bool _dropdownOpen = false;

  static const List<String> _otherLanguages = [
    'Gujarati',
    'Marathi',
    'Malayalam',
    'Hindi',
    'Bengali',
  ];

  String get _othersBoxLabel =>
      _selectedLanguage != 'English' ? _selectedLanguage : 'Others';

  // ── Lifecycle ────────────────────────────────────────────────────────────
  @override
  void initState() {
    super.initState();

    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1100),
    );

    _nameOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _ctrl,
        curve: const Interval(0.0, 0.60, curve: Curves.easeOut),
      ),
    );
    _nameSlide = Tween<Offset>(begin: const Offset(0, 0.30), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _ctrl,
            curve: const Interval(0.0, 0.60, curve: Curves.easeOutCubic),
          ),
        );

    _titleOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _ctrl,
        curve: const Interval(0.30, 0.90, curve: Curves.easeOut),
      ),
    );
    _titleSlide = Tween<Offset>(begin: const Offset(0, 0.30), end: Offset.zero)
        .animate(
          CurvedAnimation(
            parent: _ctrl,
            curve: const Interval(0.30, 0.90, curve: Curves.easeOutCubic),
          ),
        );

    _ctrl.forward();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  // ── Build ────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDF5EC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 56),

              // ── App Name (staggered fade + slide up) ──────────────────────
              FadeTransition(
                opacity: _nameOpacity,
                child: SlideTransition(
                  position: _nameSlide,
                  child: const Text(
                    'MySupplyCo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      color: _orange,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // ── Logo ──────────────────────────────────────────────────────
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Colors.black12, width: 1.5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Image.asset(
                    'lib/images/logo.png',
                    width: 190,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ── Title (delayed fade + slide up) ───────────────────────────
              FadeTransition(
                opacity: _titleOpacity,
                child: SlideTransition(
                  position: _titleSlide,
                  child: const Text(
                    'Check Before You Go',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: _green,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 36),

              // ── Language label ────────────────────────────────────────────
              const Text(
                'Choose your language:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: _green,
                ),
              ),

              const SizedBox(height: 14),

              // ── English box ───────────────────────────────────────────────
              _langBox(
                label: 'English',
                isSelected: _selectedLanguage == 'English',
                trailing: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  child: _selectedLanguage == 'English'
                      ? const Icon(
                          Icons.check,
                          key: ValueKey('check'),
                          color: _green,
                          size: 22,
                        )
                      : const SizedBox(
                          key: ValueKey('empty'),
                          width: 22,
                          height: 22,
                        ),
                ),
                onTap: () => setState(() {
                  _selectedLanguage = 'English';
                  _dropdownOpen = false;
                }),
              ),

              const SizedBox(height: 10),

              // ── Others box ────────────────────────────────────────────────
              _langBox(
                label: _othersBoxLabel,
                isSelected: _selectedLanguage != 'English',
                trailing: AnimatedRotation(
                  turns: _dropdownOpen ? 0.25 : 0,
                  duration: const Duration(milliseconds: 200),
                  child: Icon(
                    Icons.chevron_right,
                    color: _dropdownOpen ? _orange : Colors.grey[600],
                    size: 24,
                  ),
                ),
                onTap: () => setState(() => _dropdownOpen = !_dropdownOpen),
              ),

              // ── Inline dropdown ───────────────────────────────────────────
              if (_dropdownOpen)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: const Color(0xFFE0E0E0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.07),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: _otherLanguages.asMap().entries.map((entry) {
                      final index = entry.key;
                      final lang = entry.value;
                      final isFirst = index == 0;
                      final isLast = index == _otherLanguages.length - 1;
                      final isChosen = _selectedLanguage == lang;

                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            onTap: () => setState(() {
                              _selectedLanguage = lang;
                              _dropdownOpen = false;
                            }),
                            borderRadius: BorderRadius.vertical(
                              top: isFirst
                                  ? const Radius.circular(14)
                                  : Radius.zero,
                              bottom: isLast
                                  ? const Radius.circular(14)
                                  : Radius.zero,
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 14,
                              ),
                              decoration: BoxDecoration(
                                color: isChosen
                                    ? _orange.withValues(alpha: 0.08)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.vertical(
                                  top: isFirst
                                      ? const Radius.circular(14)
                                      : Radius.zero,
                                  bottom: isLast
                                      ? const Radius.circular(14)
                                      : Radius.zero,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    lang,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: isChosen
                                          ? FontWeight.w600
                                          : FontWeight.w400,
                                      color: isChosen ? _green : Colors.black87,
                                    ),
                                  ),
                                  if (isChosen)
                                    const Icon(
                                      Icons.check,
                                      color: _green,
                                      size: 18,
                                    ),
                                ],
                              ),
                            ),
                          ),
                          if (!isLast)
                            const Divider(
                              height: 1,
                              thickness: 1,
                              color: Color(0xFFEEEEEE),
                            ),
                        ],
                      );
                    }).toList(),
                  ),
                ),

              const SizedBox(height: 40),

              // ── Continue as Guest ─────────────────────────────────────────
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await StorageService.markOnboardingSeen();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _orange,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Continue as Guest',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ── Login / Register ──────────────────────────────────────────
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await StorageService.markOnboardingSeen();
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const AuthPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _lightOrange,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Login / Register',
                    style: TextStyle(
                      color: _orange,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // ── Reusable language option box ─────────────────────────────────────────
  Widget _langBox({
    required String label,
    required bool isSelected,
    required Widget trailing,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? _green : Colors.grey.shade300,
            width: 1.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 15,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected ? _green : Colors.black87,
              ),
            ),
            trailing,
          ],
        ),
      ),
    );
  }
}
