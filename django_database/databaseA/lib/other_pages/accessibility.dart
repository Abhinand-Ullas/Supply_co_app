import 'package:flutter/material.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

class AccessibilityPage extends StatelessWidget {
  const AccessibilityPage({super.key});

  // Call this as a dialog from settings
  static Future<void> showAsDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (_) => const _AccessibilityDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _AccessibilityDialog extends StatefulWidget {
  const _AccessibilityDialog();

  @override
  State<_AccessibilityDialog> createState() => _AccessibilityDialogState();
}

class _AccessibilityDialogState extends State<_AccessibilityDialog> {
  // Temporary: will be replaced by ThemeProvider later
  bool _colorBlindEnabled = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Dialog(
      elevation: 8,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 200),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title row
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A5C2A).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.accessibility_new_outlined,
                      size: 18,
                      color: Color(0xFF1A5C2A),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    l10n.accessibilityPageTitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.close_rounded,
                      size: 20,
                      color: Color(0xFFB0B0B0),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),
              Container(height: 1, color: const Color(0xFFEBEBEB)),
              const SizedBox(height: 24),

              // Toggle row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.colourBlindFriendly,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1A1A),
                    ),
                  ),
                  Switch(
                    value: _colorBlindEnabled,
                    onChanged: (val) =>
                        setState(() => _colorBlindEnabled = val),
                    activeThumbColor: const Color(0xFFFF9800),
                  ),
                ],
              ),

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
