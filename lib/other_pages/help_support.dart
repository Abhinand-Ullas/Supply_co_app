import 'package:flutter/material.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

class HelpSupportPage extends StatefulWidget {
  const HelpSupportPage({super.key});

  @override
  State<HelpSupportPage> createState() => _HelpSupportPageState();
}

class _HelpSupportPageState extends State<HelpSupportPage> {
  static const _brandGreen = Color(0xFF1B4D3E);
  static const _accentOrange = Color(0xFFE87830);
  static const _lightBg = Color(0xFFFDF5EC);
  static const _cardWhite = Color(0xFFFFFFFF);
  static const _darkText = Color(0xFF333333);
  static const _lightText = Color(0xFF666666);

  // Track expanded state of FAQ items
  final Map<int, bool> _expandedStates = {};

  @override
  Widget build(BuildContext context) {
    final AppLocalizations strings = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: _lightBg,
      appBar: AppBar(
        backgroundColor: _brandGreen,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          strings.helpSupportPageTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ─ FAQ Section
              Text(
                strings.frequentlyAskedQuestions,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: _brandGreen,
                ),
              ),
              const SizedBox(height: 16),
              ..._buildFaqItems(context),
              const SizedBox(height: 32),
              // ─ Contact Support Section
              _buildSectionHeader(strings.needMoreHelp),
              const SizedBox(height: 12),
              _buildContactCard(
                icon: Icons.email_outlined,
                title: strings.emailSupport,
                subtitle: strings.supportEmail,
                color: _accentOrange,
              ),
              const SizedBox(height: 12),
              _buildContactCard(
                icon: Icons.phone_outlined,
                title: strings.phoneSupport,
                subtitle: strings.supportPhone,
                color: _brandGreen,
              ),
              const SizedBox(height: 12),
              _buildContactCard(
                icon: Icons.location_on_outlined,
                title: strings.governmentPortalText,
                subtitle: strings.supportWebsite,
                color: _accentOrange,
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: _brandGreen,
      ),
    );
  }

  List<Widget> _buildFaqItems(BuildContext context) {
    final AppLocalizations strings = AppLocalizations.of(context)!;
    final faqs = [
      {
        'question': strings.helpFaqCreateAccount,
        'answer': strings.helpFaqCreateAccountAns,
      },
      {
        'question': strings.helpFaqCheckStock,
        'answer': strings.helpFaqCheckStockAns,
      },
      {
        'question': strings.helpFaqNotifications,
        'answer': strings.helpFaqNotificationsAns,
      },
      {
        'question': strings.helpFaqOfflineMode,
        'answer': strings.helpFaqOfflineModeAns,
      },
    ];

    return List.generate(
      faqs.length,
      (index) => _buildFaqTile(
        index,
        faqs[index]['question']!,
        faqs[index]['answer']!,
      ),
    );
  }

  Widget _buildFaqTile(int index, String question, String answer) {
    final isExpanded = _expandedStates[index] ?? false;

    return GestureDetector(
      onTap: () {
        setState(() {
          _expandedStates[index] = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: _cardWhite,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isExpanded ? _accentOrange : Colors.grey.shade200,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      question,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: _darkText,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Icon(
                    isExpanded ? Icons.expand_less : Icons.expand_more,
                    color: _accentOrange,
                    size: 24,
                  ),
                ],
              ),
            ),
            if (isExpanded)
              Container(
                decoration: BoxDecoration(
                  color: _brandGreen.withOpacity(0.05),
                  border: const Border(
                    top: BorderSide(color: Color(0xFFE0E0E0), width: 1),
                  ),
                ),
                padding: const EdgeInsets.all(16),
                child: Text(
                  answer,
                  style: const TextStyle(
                    fontSize: 14,
                    color: _lightText,
                    height: 1.5,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200, width: 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: _darkText,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 13, color: _lightText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
