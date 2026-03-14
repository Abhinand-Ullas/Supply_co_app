import 'package:flutter/material.dart';
import 'package:supply_co/intro_pages/auth_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  static const Color _bgColor = Color(0xFFFDF5EC);
  static const Color _orange = Color(0xFFE87830);

  late AnimationController _controller;

  // Phase 1 — logo + title (0% → 65%)
  late Animation<double> _logoTitleOpacity;
  late Animation<Offset> _logoTitleSlide;

  // Phase 2 — tagline card (55% → 100%)
  late Animation<double> _taglineOpacity;

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    // Logo + title: fade in and slide up in the first 65 %
    _logoTitleOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.65, curve: Curves.easeOut),
      ),
    );
    _logoTitleSlide =
        Tween<Offset>(begin: const Offset(0, 0.12), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.65, curve: Curves.easeOutCubic),
          ),
        );

    // Tagline: fades in after logo+title have appeared (55% → 100%)
    _taglineOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.55, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.forward();

    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        final seen = StorageService.hasSeenOnboarding();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => seen ? const AuthWrapper() : const GetStarted(),
          ),
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Phase 1: Logo + Title ─────────────────────────
            FadeTransition(
              opacity: _logoTitleOpacity,
              child: SlideTransition(
                position: _logoTitleSlide,
                child: Column(
                  children: [
                    // Logo with rounded border
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.black12, width: 1.5),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(22),
                        child: Image.asset(
                          'lib/images/logo.png',
                          width: 175,
                          height: 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 36),

                    // App name
                    const Text(
                      'MYSUPPLYCO',
                      style: TextStyle(
                        color: _orange,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 14),

            // ── Phase 2: Tagline (delayed fade-in) ────────────
            FadeTransition(
              opacity: _taglineOpacity,
              child: Column(
                children: [
                  Container(width: 48, height: 1.5, color: _orange),
                  const SizedBox(height: 20),
                  Text(
                    'CHECK BEFORE YOU GO',
                    style: TextStyle(
                      color: _orange.withValues(alpha: 0.65),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 3.5,
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
