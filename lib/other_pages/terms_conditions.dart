import 'package:flutter/material.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  static const _brandGreen = Color(0xFF1B4D3E);
  static const _accentOrange = Color(0xFFE87830);
  static const _lightBg = Color(0xFFFDF5EC);
  static const _cardWhite = Color(0xFFFFFFFF);
  static const _darkText = Color(0xFF333333);
  static const _lightText = Color(0xFF666666);

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
          strings.termsConditionsPageTitle,
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
              _buildIntroSection(strings),
              const SizedBox(height: 24),
              _buildSection(
                number: '1',
                title: strings.termsUserAgreement,
                content: strings.termsUserAgreementContent,
              ),
              _buildSection(
                number: '2',
                title: strings.termsEligibility,
                content: strings.termsEligibilityContent,
              ),
              _buildSection(
                number: '3',
                title: strings.termsAcceptableUse,
                content: strings.termsAcceptableUseContent,
              ),
              _buildSection(
                number: '4',
                title: strings.termsUserResponsibilities,
                content: strings.termsUserResponsibilitiesContent,
              ),
              _buildSection(
                number: '5',
                title: strings.termsIntellectualProperty,
                content: strings.termsIntellectualPropertyContent,
              ),
              _buildSection(
                number: '6',
                title: strings.termsLimitationOfLiability,
                content: strings.termsLimitationOfLiabilityContent,
              ),
              _buildSection(
                number: '7',
                title: strings.termsDataAndInformation,
                content: strings.termsDataAndInformationContent,
              ),
              _buildSection(
                number: '8',
                title: strings.termsAccountTermination,
                content: strings.termsAccountTerminationContent,
              ),
              _buildSection(
                number: '9',
                title: strings.termsModificationsToTerms,
                content: strings.termsModificationsToTermsContent,
              ),
              _buildSection(
                number: '10',
                title: strings.termsGoverningLaw,
                content: strings.termsGoverningLawContent,
              ),
              const SizedBox(height: 16),
              _buildFooterNote(strings),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroSection(AppLocalizations strings) {
    return Container(
      decoration: BoxDecoration(
        color: _cardWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: _accentOrange, width: 2),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            strings.termsGovernmentSupplyManagementSystem,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: _brandGreen,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            strings.termsIntroContent,
            style: const TextStyle(
              fontSize: 14,
              color: _lightText,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String number,
    required String title,
    required String content,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: _accentOrange,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  number,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
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
          Padding(
            padding: const EdgeInsets.only(left: 44),
            child: Text(
              content,
              style: const TextStyle(
                fontSize: 14,
                color: _lightText,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterNote(AppLocalizations strings) {
    return Container(
      decoration: BoxDecoration(
        color: _accentOrange.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: _accentOrange.withOpacity(0.3), width: 1),
      ),
      padding: const EdgeInsets.all(12),
      child: Text(
        strings.termsFooterNote,
        style: const TextStyle(fontSize: 12, color: _lightText, height: 1.5),
      ),
    );
  }
}
