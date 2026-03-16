import 'package:flutter/material.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  static const _brandGreen = Color(0xFF1B4D3E);
  static const _accentOrange = Color(0xFFE87830);
  static const _lightBg = Color(0xFFFDF5EC);
  static const _cardWhite = Color(0xFFFFFFFF);
  static const _darkText = Color(0xFF333333);
  static const _lightText = Color(0xFF666666);
  static const _successGreen = Color(0xFF4CAF50);

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
          strings.privacyPolicyPageTitle,
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
              _buildHighlightBox(strings),
              const SizedBox(height: 24),
              _buildSection(
                strings: strings,
                title: strings.privacyDataCollection,
                icon: Icons.data_usage,
                content: strings.privacyDataCollectionContent,
                bulletPoints: [
                  strings.privacyFullName,
                  strings.privacyEmailAddress,
                  strings.privacyMobileNumber,
                ],
              ),
              const SizedBox(height: 20),
              _buildSection(
                strings: strings,
                title: strings.privacyDataUsage,
                icon: Icons.assignment,
                content: strings.privacyDataUsageContent,
                bulletPoints: [
                  strings.privacyAccountAuthentication,
                  strings.privacyCustomerSupport,
                  strings.privacyStockNotifications,
                ],
              ),
              const SizedBox(height: 20),
              _buildSection(
                strings: strings,
                title: strings.privacyWhatWeDoNotDo,
                icon: Icons.block,
                content: '',
                bulletPoints: [
                  strings.privacyDoNotSell,
                  strings.privacyDoNotMarket,
                  strings.privacyDoNotShareThirdParty,
                  strings.privacyDoNotUseOutsideGov,
                  strings.privacyDoNotCombineData,
                ],
              ),
              const SizedBox(height: 20),
              _buildSection(
                strings: strings,
                title: strings.privacyDataSecurity,
                icon: Icons.security,
                content: strings.privacyDataSecurityContent,
                bulletPoints: [
                  strings.privacySecureServers,
                  strings.privacyLimitedAccess,
                  strings.privacySecurityAudits,
                  strings.privacyGovernmentCompliance,
                ],
              ),
              const SizedBox(height: 20),
              _buildSection(
                strings: strings,
                title: strings.privacyYourRights,
                icon: Icons.verified_user,
                content: strings.privacyYourRightsContent,
                bulletPoints: [
                  strings.privacyAccessData,
                  strings.privacyCorrectData,
                  strings.privacyDeleteAccount,
                  strings.privacyWithdrawConsent,
                ],
              ),
              const SizedBox(height: 20),
              _buildSection(
                strings: strings,
                title: strings.privacyDataRetention,
                icon: Icons.history,
                content: strings.privacyDataRetentionContent,
              ),
              const SizedBox(height: 20),
              _buildSection(
                strings: strings,
                title: strings.privacyChangesToPolicy,
                icon: Icons.info,
                content: strings.privacyChangesToPolicyContent,
              ),

              const SizedBox(height: 24),
              _buildFooterNote(strings),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHighlightBox(AppLocalizations strings) {
    return Container(
      decoration: BoxDecoration(
        color: _successGreen.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _successGreen, width: 2),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.verified, color: _successGreen, size: 24),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  strings.privacyProtectedTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: _brandGreen,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            strings.privacyProtectedDescription,
            style: const TextStyle(
              fontSize: 14,
              color: _darkText,
              height: 1.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required AppLocalizations strings,
    required String title,
    required IconData icon,
    required String content,
    List<String>? bulletPoints,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: _accentOrange.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(icon, color: _accentOrange, size: 24),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: _darkText,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        if (content.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 8),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 14,
                color: _lightText,
                height: 1.5,
              ),
            ),
          ),
        if (bulletPoints != null && bulletPoints.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: bulletPoints
                  .map(
                    (point) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '• ',
                            style: TextStyle(
                              fontSize: 14,
                              color: _accentOrange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              point,
                              style: const TextStyle(
                                fontSize: 14,
                                color: _lightText,
                                height: 1.4,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
      ],
    );
  }

  Widget _buildFooterNote(AppLocalizations strings) {
    return Container(
      decoration: BoxDecoration(
        color: _brandGreen.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _brandGreen.withValues(alpha: 0.2), width: 1),
      ),
      padding: const EdgeInsets.all(12),
      child: Text(
        strings.privacyFooterNote,
        style: const TextStyle(fontSize: 12, color: _lightText, height: 1.5),
      ),
    );
  }
}
