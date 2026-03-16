// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'MySupplyCo';

  @override
  String get searchSupplycoOutlets => 'Search SupplyCo Outlets';

  @override
  String get selectDistrict => 'Select District';

  @override
  String get searchByNamePlaceCode => 'Search by name or place or code';

  @override
  String get searchButton => 'Search';

  @override
  String get searchResults => 'Search Results';

  @override
  String get lastVisited => 'Last Visited';

  @override
  String get viewStock => 'View Stock';

  @override
  String get selectedOutlet => 'Selected Outlet';

  @override
  String get viewMore => 'View More';

  @override
  String get noOutletsFound => 'No outlets found.';

  @override
  String get allSupplycoOutlets => 'All SupplyCo Outlets';

  @override
  String district(Object district) {
    return '$district District';
  }

  @override
  String outletFound(Object count) {
    return '$count Outlets Found';
  }

  @override
  String get sortedByDistance => 'Sorted by Distance';

  @override
  String get sort => 'Sort >';

  @override
  String tapSearchToFind(Object district) {
    return 'Tap \'Search\' to find the government outlets in $district that match your query.';
  }

  @override
  String get pleaseEnterOutlet =>
      'Please enter an outlet name or shop code or place\nto search for supplyco outlets';

  @override
  String get continueAsGuest => 'Continue as Guest';

  @override
  String get loginRegister => 'Login / Register';

  @override
  String get profileSettings => 'Profile & Settings';

  @override
  String get settings => 'Settings';

  @override
  String get setProfile => 'Set Profile';

  @override
  String get manageAlerts => 'Manage Alerts';

  @override
  String get language => 'Language';

  @override
  String get accessibility => 'Accessibility';

  @override
  String get helpSupport => 'Help & Support';

  @override
  String get termsConditions => 'Terms & Conditions';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get logout => 'Log out';

  @override
  String get selectYourLanguage => 'Select Your Language';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get guest => 'GUEST USER';

  @override
  String get allDistrictsLabel => 'All Districts';

  @override
  String kmAway(Object distance) {
    return '$distance km away';
  }

  @override
  String get locationInfo => '📍 Location info';

  @override
  String get viewMoreOutlets => 'View More Outlets';

  @override
  String get loadingMoreOutlets => '__ Loading More Outlets __';

  @override
  String get register => 'Register';

  @override
  String get login => 'Login';

  @override
  String get enterFullName => 'Enter Full Name';

  @override
  String get enterMobileNumber => 'Enter Mobile Number';

  @override
  String get getOTP => 'Get OTP';

  @override
  String get enterOTP => 'Enter OTP';

  @override
  String get resendOTP => 'Resend OTP';

  @override
  String get continueWithGoogle => 'Continue with Google';

  @override
  String get or => 'Or';

  @override
  String get pleaseEnterNameAndNumber => 'Please enter your name & number';

  @override
  String get pleaseEnterNameMessage => 'Please enter your name';

  @override
  String get pleaseEnterMobileMessage => 'Please enter mobile number';

  @override
  String get pleaseEnterValidMobileNumber =>
      'Please enter a valid 10-digit mobile number';

  @override
  String get otpSentSuccessfully => 'OTP sent successfully!';

  @override
  String get numberNotRegistered =>
      'Number not registered. Please register first.';

  @override
  String get noAccountFound => 'No account found. Please register first.';

  @override
  String get pleaseEnterNameBefore =>
      'Please enter your name before continuing';

  @override
  String get pleaseEnterOTPMessage => 'Please enter OTP';

  @override
  String get registerButtonLabel => 'REGISTER';

  @override
  String get loginButtonLabel => 'LOGIN';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageMalayalam => 'Malayalam';

  @override
  String get languageGujarati => 'Gujarati';

  @override
  String get languageMarathi => 'Marathi';

  @override
  String get languageHindi => 'Hindi';

  @override
  String get languageBengali => 'Bengali';

  @override
  String get languageTamil => 'Tamil';

  @override
  String get languageTelugu => 'Telugu';

  @override
  String get frequentlyAskedQuestions => 'Frequently Asked Questions';

  @override
  String get needMoreHelp => 'Need More Help?';

  @override
  String get emailSupport => 'Email Support';

  @override
  String get phoneSupport => 'Phone Support';

  @override
  String get governmentPortal => 'Government Portal';

  @override
  String get supportEmail => 'support@mysupplyco.gov.in';

  @override
  String get supportPhone => '+91-1800-SUPPLY-GO';

  @override
  String get supportWebsite => 'www.mysupplyco.gov.in';

  @override
  String get faqQ1 => 'How do I create an account?';

  @override
  String get faqA1 =>
      'Download the mySupplyCO app and tap \"Sign Up\". Enter your name, email, and mobile number. You\'ll receive a verification code. Enter it to complete registration.';

  @override
  String get faqQ2 => 'How do I check stock availability?';

  @override
  String get faqA2 =>
      'Once logged in, tap the \"Stock\" tab. You can view real-time inventory from your assigned supply center. Use the search bar to find specific items quickly.';

  @override
  String get faqQ3 => 'Who can place orders?';

  @override
  String get faqA3 =>
      'Government authorized officials registered with mySupplyCO can place orders. Your access level depends on your government organization and role.';

  @override
  String get faqQ4 => 'How do I receive notifications?';

  @override
  String get faqA4 =>
      'Go to Settings → Manage Alerts to enable/disable notifications for stock updates, order status, and system announcements. Push notifications require app permission.';

  @override
  String get faqQ5 => 'Is there an offline mode?';

  @override
  String get faqA5 =>
      'Yes! The app automatically caches recent stock data. You can view previously loaded stock information even without an internet connection.';

  @override
  String get faqQ6 => 'How do I reset my password?';

  @override
  String get faqA6 =>
      'On the login page, tap \"Forgot Password?\" and enter your registered email. You\'ll receive a reset link via email. Follow the instructions to create a new password.';

  @override
  String get governmentSupplyManagementSystem =>
      'Government Supply Management System';

  @override
  String get pleaseReadTermsCarefully =>
      'Please read these Terms and Conditions carefully before using the mySupplyCO application. Your access and use of this application is conditioned on your acceptance and compliance with these terms.';

  @override
  String get userAgreement => 'User Agreement';

  @override
  String get userAgreementContent =>
      'By accessing and using the mySupplyCO application, you agree to be bound by these Terms and Conditions. This application is designed to facilitate supply chain management for authorized government officials and organizations.';

  @override
  String get eligibility => 'Eligibility';

  @override
  String get eligibilityContent =>
      'You must be an authorized government official or representative of a government organization to use this application. You agree to provide accurate and complete information during registration and to maintain the confidentiality of your login credentials.';

  @override
  String get acceptableUse => 'Acceptable Use';

  @override
  String get acceptableUseContent =>
      'You agree not to: (a) use the application for unauthorized purposes, (b) attempt to gain unauthorized access to the system, (c) share your account credentials with unauthorized individuals, (d) conduct any illegal activities through the application, or (e) violate any applicable laws or regulations.';

  @override
  String get userResponsibilities => 'User Responsibilities';

  @override
  String get userResponsibilitiesContent =>
      'You are solely responsible for: (a) maintaining the security of your account, (b) all activities conducted using your account, (c) ensuring compliance with your government\'s policies, and (d) providing accurate information during transactions and orders.';

  @override
  String get intellectualProperty => 'Intellectual Property';

  @override
  String get intellectualPropertyContent =>
      'All content, features, and functionality of the mySupplyCO application are owned by the government agency, protected by copyright and other intellectual property laws. You may not reproduce, distribute, or transmit any content without prior written consent.';

  @override
  String get limitationOfLiability => 'Limitation of Liability';

  @override
  String get limitationOfLiabilityContent =>
      'The mySupplyCO application is provided on an \"as-is\" basis. We do not warrant that the service will be uninterrupted or error-free. To the maximum extent permitted by law, we are not liable for any indirect, incidental, special, or consequential damages arising from your use of the application.';

  @override
  String get dataAndInformation => 'Data and Information';

  @override
  String get dataAndInformationContent =>
      'All stock data, orders, and transaction records are the property of the government agency. You agree not to copy, distribute, or use this information for purposes other than official government functions. See our Privacy Policy for details on how we handle personal data.';

  @override
  String get accountTermination => 'Account Termination';

  @override
  String get accountTerminationContent =>
      'We reserve the right to suspend or terminate your account if you violate these terms, engage in unauthorized use, or fail to comply with government regulations. Termination may be immediate and without further notice.';

  @override
  String get modificationsToTerms => 'Modifications to Terms';

  @override
  String get modificationsToTermsContent =>
      'We may modify these Terms and Conditions at any time. Changes will be effective immediately upon posting. Continued use of the application following any modifications constitutes your acceptance of the updated terms.';

  @override
  String get governingLaw => 'Governing Law';

  @override
  String get governingLawContent =>
      'These Terms and Conditions are governed by and construed in accordance with the laws of India. Any legal action or proceeding shall be subject to the jurisdiction of the appropriate courts.';

  @override
  String get lastUpdatedTerms =>
      '⚠ Last Updated: March 2026. These Terms and Conditions apply to all users of the mySupplyCO application. By using this application, you acknowledge that you have read, understood, and agree to be bound by these terms.';

  @override
  String get yourPrivacyIsProtected => 'Your Privacy is Protected';

  @override
  String get privacyDescription =>
      'We collect ONLY 3 pieces of information: Your Name, Email, and Mobile Number. We will NEVER share, sell, or misuse your data. Your information is used exclusively for government supply chain operations.';

  @override
  String get dataCollection => 'Data Collection';

  @override
  String get dataCollectionContent =>
      'mySupplyCO collects and stores ONLY the following personal information from you during registration and use:';

  @override
  String get fullName => 'Your Full Name';

  @override
  String get emailAddress => 'Your Email Address';

  @override
  String get mobileNumber => 'Your Mobile Number';

  @override
  String get dataUsage => 'Data Usage';

  @override
  String get dataUsageContent => 'Your personal data is used exclusively for:';

  @override
  String get accountAuthentication => 'Account authentication and login';

  @override
  String get orderConfirmations => 'Sending order confirmations and updates';

  @override
  String get customerSupport => 'Providing customer support';

  @override
  String get stockNotifications =>
      'Notifying you of stock changes and system alerts';

  @override
  String get governmentFunctions =>
      'Fulfilling government supply chain management functions';

  @override
  String get whatWeDoNotDo => 'What We Do NOT Do';

  @override
  String get doNotSellData =>
      'We do NOT sell, share, or trade your personal data';

  @override
  String get doNotMarketData =>
      'We do NOT use your data for marketing or advertising';

  @override
  String get doNotShareThirdParty =>
      'We do NOT share your data with third-party companies';

  @override
  String get doNotUseOutsideGov =>
      'We do NOT use your data for purposes outside government supply functions';

  @override
  String get doNotCombineData =>
      'We do NOT combine your data with external sources';

  @override
  String get dataSecurity => 'Data Security';

  @override
  String get dataSecurityContent =>
      'We implement industry-standard security measures to protect your personal information:';

  @override
  String get encryptedTransmission => 'Encrypted data transmission (SSL/TLS)';

  @override
  String get secureServers => 'Secure server infrastructure';

  @override
  String get limitedAccess =>
      'Limited access to personal data (authorized personnel only)';

  @override
  String get securityAudits => 'Regular security audits and updates';

  @override
  String get governmentCompliance =>
      'Compliance with government data protection standards';

  @override
  String get yourRights => 'Your Rights';

  @override
  String get yourRightsContent => 'You have the right to:';

  @override
  String get accessData => 'Access your personal data at any time';

  @override
  String get correctData => 'Request correction of inaccurate information';

  @override
  String get deleteAccount => 'Request deletion of your account and data';

  @override
  String get obtainCopy => 'Obtain a copy of your personal information';

  @override
  String get withdrawConsent => 'Withdraw consent for data usage';

  @override
  String get dataRetention => 'Data Retention';

  @override
  String get dataRetentionContent =>
      'Your personal data is retained only as long as is necessary for government supply management functions. Upon account deletion, your data will be permanently removed from our systems within 30 days, except where required by law.';

  @override
  String get changesToPrivacyPolicy => 'Changes to Privacy Policy';

  @override
  String get changesToPrivacyPolicyContent =>
      'We may update this Privacy Policy periodically. We will notify users of any significant changes via email or through the application. Your continued use of mySupplyCO constitutes acceptance of the updated policy.';

  @override
  String get contactUsPrivacy => 'Contact Us';

  @override
  String get contactUsPrivacyContent =>
      'If you have questions about this Privacy Policy or your personal data, please contact us at:';

  @override
  String get privacyEmail => 'Email: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'Phone: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'Portal: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 Last Updated: March 2026. This Privacy Policy is part of the mySupplyCO Terms of Service. By using this application, you consent to our privacy practices as outlined herein.';

  @override
  String get privacyPolicyPageTitle => 'Privacy Policy';

  @override
  String get termsConditionsPageTitle => 'Terms & Conditions';

  @override
  String get helpSupportPageTitle => 'Help & Support';

  @override
  String get helpFaqCreateAccount => 'How do I create an account?';

  @override
  String get helpFaqCreateAccountAns =>
      'Download the MySupplyCo app and tap \"Register\". enter your name,and you can either use your google account or mobile number to login.If you are using mobile number,then otp verification is required.';

  @override
  String get helpFaqCheckStock => 'How do I check stock availability?';

  @override
  String get helpFaqCheckStockAns =>
      'Once logged in, tap the \"Stock\" tab. You can view real-time inventory from your assigned supply center. Use the search bar to find specific items quickly.';

  @override
  String get helpFaqNotifications => 'How do I receive notifications?';

  @override
  String get helpFaqNotificationsAns =>
      'Go to Settings → Manage Alerts to enable/disable notifications for stock updates,and system announcements. Push notifications require app permission.';

  @override
  String get helpFaqOfflineMode => 'Is there an offline mode?';

  @override
  String get helpFaqOfflineModeAns =>
      'Yes! The app automatically caches recent stock data. You can view previously loaded stock information even without an internet connection.';

  @override
  String get governmentPortalText => 'Government Portal';

  @override
  String get privacyDataCollection => 'Data Collection';

  @override
  String get privacyDataCollectionContent =>
      'MySupplyCo collects and stores only the following personal information from you during registration and use:';

  @override
  String get privacyFullName => 'Your Full Name';

  @override
  String get privacyEmailAddress => 'Your Email Address';

  @override
  String get privacyMobileNumber => 'Your Mobile Number';

  @override
  String get privacyDataUsage => 'Data Usage';

  @override
  String get privacyDataUsageContent =>
      'Your personal data is used exclusively for:';

  @override
  String get privacyAccountAuthentication => 'Account authentication and login';

  @override
  String get privacyCustomerSupport => 'Providing customer support';

  @override
  String get privacyStockNotifications =>
      'Notifying you of stock changes and system alerts';

  @override
  String get privacyWhatWeDoNotDo => 'What we do not do';

  @override
  String get privacyDoNotSell =>
      'We do not sell, share, or trade your personal data';

  @override
  String get privacyDoNotMarket =>
      'We do not use your data for marketing or advertising';

  @override
  String get privacyDoNotShareThirdParty =>
      'We do not share your data with third-party companies';

  @override
  String get privacyDoNotUseOutsideGov =>
      'We do not use your data for purposes outside government supply functions';

  @override
  String get privacyDoNotCombineData =>
      'We do not combine your data with external sources';

  @override
  String get privacyDataSecurity => 'Data Security';

  @override
  String get privacyDataSecurityContent =>
      'We implement industry-standard security measures to protect your personal information:';

  @override
  String get privacySecureServers => 'Secure server infrastructure';

  @override
  String get privacyLimitedAccess =>
      'Limited access to personal data (authorized personnel only)';

  @override
  String get privacySecurityAudits => 'Regular security audits and updates';

  @override
  String get privacyGovernmentCompliance =>
      'Compliance with government data protection standards';

  @override
  String get privacyYourRights => 'Your Rights';

  @override
  String get privacyYourRightsContent => 'You have the right to:';

  @override
  String get privacyAccessData => 'Access your personal data at any time';

  @override
  String get privacyCorrectData =>
      'Request correction of inaccurate information';

  @override
  String get privacyDeleteAccount =>
      'Request deletion of your account and data';

  @override
  String get privacyWithdrawConsent => 'Withdraw consent for data usage';

  @override
  String get privacyDataRetention => 'Data Retention';

  @override
  String get privacyDataRetentionContent =>
      'Your personal data is retained only as long as is necessary for government supply management functions. Upon account deletion, your data will be permanently removed from our systems within 30 days, except where required by law.';

  @override
  String get privacyChangesToPolicy => 'Changes to Privacy Policy';

  @override
  String get privacyChangesToPolicyContent =>
      'We may update this Privacy Policy periodically. We will notify users of any significant changes via email or through the application. Your continued use of MySupplyCo constitutes acceptance of the updated policy.';

  @override
  String get privacyProtectedTitle => 'Your Privacy is Protected';

  @override
  String get privacyProtectedDescription =>
      'We collect ONLY 3 pieces of information: Your Name, Email, and Mobile Number. We will NEVER share, sell, or misuse your data. Your information is used exclusively for government supply chain operations.';

  @override
  String get privacyFooterNote =>
      '📋 Last Updated: March 2026. This Privacy Policy is part of the MySupplyCo Terms of Service. By using this application, you consent to our privacy practices as outlined herein.';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'Government Supply Management System';

  @override
  String get termsIntroContent =>
      'Please read these Terms and Conditions carefully before using the MySupplyCo application. Your access and use of this application is conditioned on your acceptance and compliance with these terms.';

  @override
  String get termsUserAgreement => 'User Agreement';

  @override
  String get termsUserAgreementContent =>
      'By accessing and using the MySupplyCo application, you agree to be bound by these Terms and Conditions. This application is designed to facilitate supply chain management for authorized government officials and organizations.';

  @override
  String get termsEligibility => 'Eligibility';

  @override
  String get termsEligibilityContent =>
      'You must be an authorized citizen to use this application. You agree to provide accurate and complete information during registration and to maintain the confidentiality of your login credentials.';

  @override
  String get termsAcceptableUse => 'Acceptable Use';

  @override
  String get termsAcceptableUseContent =>
      'You agree not to: (a) use the application for unauthorized purposes, (b) attempt to gain unauthorized access to the system, (c) share your account credentials with unauthorized individuals, (d) conduct any illegal activities through the application, or (e) violate any applicable laws or regulations.';

  @override
  String get termsUserResponsibilities => 'User Responsibilities';

  @override
  String get termsUserResponsibilitiesContent =>
      'You are solely responsible for: (a) maintaining the security of your account, (b) all activities conducted using your account, (c) ensuring compliance with your government\'s policies, and (d) providing accurate information during transactions and orders.';

  @override
  String get termsIntellectualProperty => 'Intellectual Property';

  @override
  String get termsIntellectualPropertyContent =>
      'All content, features, and functionality of the MySupplyCo application are owned by the government agency, protected by copyright and other intellectual property laws. You may not reproduce, distribute, or transmit any content without prior written consent.';

  @override
  String get termsLimitationOfLiability => 'Limitation of Liability';

  @override
  String get termsLimitationOfLiabilityContent =>
      'The MySupplyCo application is provided on an \"as-is\" basis. We do not warrant that the service will be uninterrupted or error-free. To the maximum extent permitted by law, we are not liable for any indirect, incidental, special, or consequential damages arising from your use of the application.';

  @override
  String get termsDataAndInformation => 'Data and Information';

  @override
  String get termsDataAndInformationContent =>
      'All stock data, and transaction records are the property of the government agency. You agree not to copy, distribute, or use this information for purposes other than official government functions. See our Privacy Policy for details on how we handle personal data.';

  @override
  String get termsAccountTermination => 'Account Termination';

  @override
  String get termsAccountTerminationContent =>
      'We reserve the right to suspend or terminate your account if you violate these terms, engage in unauthorized use, or fail to comply with government regulations. Termination may be immediate and without further notice.';

  @override
  String get termsModificationsToTerms => 'Modifications to Terms';

  @override
  String get termsModificationsToTermsContent =>
      'We may modify these Terms and Conditions at any time. Changes will be effective immediately upon posting. Continued use of the application following any modifications constitutes your acceptance of the updated terms.';

  @override
  String get termsGoverningLaw => 'Governing Law';

  @override
  String get termsGoverningLawContent =>
      'These Terms and Conditions are governed by and construed in accordance with the laws of India. Any legal action or proceeding shall be subject to the jurisdiction of the appropriate courts.';

  @override
  String get termsFooterNote =>
      '⚠ Last Updated: March 2026. These Terms and Conditions apply to all users of the MySupplyCo application. By using this application, you acknowledge that you have read, understood, and agree to be bound by these terms.';
}
