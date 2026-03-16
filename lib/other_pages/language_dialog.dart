import 'package:flutter/material.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

// ─────────────────────────────────────────────────────────────────────────────
// LanguageDialog
//
// A reusable AlertDialog that lets the user pick their preferred language.
// StatefulWidget because _selected changes live as the user taps rows.
//
// HOW TO USE from ProfileSettingsPage:
//   showDialog<String>(
//     context: context,
//     builder: (_) => LanguageDialog(currentLanguage: _selectedLanguage),
//   ).then((chosen) {
//     if (chosen != null) setState(() => _selectedLanguage = chosen);
//   });
// ─────────────────────────────────────────────────────────────────────────────
class LanguageDialog extends StatefulWidget {
  final String currentLanguage;
  const LanguageDialog({super.key, required this.currentLanguage});

  @override
  State<LanguageDialog> createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<LanguageDialog> {
  static const List<String> _languages = [
    'English',
    'Malayalam',
    'Gujarati',
    'Marathi',
    'Hindi',
    'Bengali',
    'Tamil',
    'Telugu',
  ];

  // Tracks which language is currently highlighted inside the dialog.
  // Initialised from the parent's current selection so it opens pre-highlighted.
  late String _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.currentLanguage;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,

      // ── Title ──────────────────────────────────────────────────────────
      title: Center(
        child: Text(
          AppLocalizations.of(context)!.selectYourLanguage,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
      ),

      // Remove default padding so our custom dividers go edge-to-edge
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),

      // ── Content ────────────────────────────────────────────────────────
      content: Column(
        mainAxisSize: MainAxisSize.min, // Shrink dialog to fit content
        children: [
          // Divider directly below the "Select Language" title.
          // Spans the full dialog width (no indent).
          const Divider(height: 1, thickness: 1, color: Color(0xFFEEEEEE)),

          // Build one row per language using List.generate so we have the
          // index — needed to skip the divider after the last item.
          ...List.generate(_languages.length, (index) {
            final String language = _languages[index];
            final bool isSelected = _selected == language;

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ── Language row ─────────────────────────────────────────
                InkWell(
                  // Tap updates highlight immediately (live preview).
                  // Dialog does NOT close here — only on "Confirm".
                  onTap: () => setState(() => _selected = language),

                  child: Container(
                    // Light green tint on the selected row
                    color: isSelected
                        ? const Color.fromARGB(
                            255,
                            93,
                            97,
                            94,
                          ).withValues(alpha: 0.07)
                        : Colors.transparent,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        // Custom radio circle matching the green theme.
                        // Flutter's built-in Radio widget doesn't support custom
                        // colors easily, so we draw our own circle.
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFF1A5C2A)
                                  : Colors.grey.shade400,
                              width: 2,
                            ),
                          ),
                          // Inner filled dot — only visible when selected
                          child: isSelected
                              ? Center(
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xFF1A5C2A),
                                    ),
                                  ),
                                )
                              : null,
                        ),

                        const SizedBox(width: 14),

                        // Language label — bold + green when selected
                        Text(
                          language,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Divider between language rows.
                // Skipped after the very last item using the index check.
                if (index < _languages.length - 1)
                  const Divider(
                    height: 1,
                    thickness: 1,
                    color: Color(0xFFEEEEEE),
                    // indent starts the line after the radio+gap area (20+20+14=54)
                    indent: 54,
                  ),
              ],
            );
          }),
        ],
      ),

      // ── Action buttons ─────────────────────────────────────────────────
      actions: [
        // Cancel — closes dialog, returns null to caller (no change saved)
        TextButton(
          onPressed: () => Navigator.pop(context, null),
          child: Text(
            AppLocalizations.of(context)!.cancel,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        // Confirm — closes dialog, returns _selected string to caller.
        // The caller receives this via .then((chosen) { ... })
        TextButton(
          onPressed: () => Navigator.pop(context, _selected),
          child: Text(
            AppLocalizations.of(context)!.confirm,
            style: const TextStyle(
              color: Color(0xFF1A5C2A),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    );
  }
}
