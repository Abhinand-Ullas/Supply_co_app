import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated_localizations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en'),
    Locale('gu'),
    Locale('hi'),
    Locale('ml'),
    Locale('mr'),
    Locale('ta'),
    Locale('te'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'MySupplyCo'**
  String get appTitle;

  /// No description provided for @searchSupplycoOutlets.
  ///
  /// In en, this message translates to:
  /// **'Search SupplyCo Outlets'**
  String get searchSupplycoOutlets;

  /// No description provided for @selectDistrict.
  ///
  /// In en, this message translates to:
  /// **'Select District'**
  String get selectDistrict;

  /// No description provided for @searchByNamePlaceCode.
  ///
  /// In en, this message translates to:
  /// **'Search by name or place or code'**
  String get searchByNamePlaceCode;

  /// No description provided for @searchButton.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchButton;

  /// No description provided for @searchResults.
  ///
  /// In en, this message translates to:
  /// **'Search Results'**
  String get searchResults;

  /// No description provided for @lastVisited.
  ///
  /// In en, this message translates to:
  /// **'Last Visited'**
  String get lastVisited;

  /// No description provided for @viewStock.
  ///
  /// In en, this message translates to:
  /// **'View Stock'**
  String get viewStock;

  /// No description provided for @selectedOutlet.
  ///
  /// In en, this message translates to:
  /// **'Selected Outlet'**
  String get selectedOutlet;

  /// No description provided for @viewMore.
  ///
  /// In en, this message translates to:
  /// **'View More'**
  String get viewMore;

  /// No description provided for @noOutletsFound.
  ///
  /// In en, this message translates to:
  /// **'No outlets found.'**
  String get noOutletsFound;

  /// No description provided for @allSupplycoOutlets.
  ///
  /// In en, this message translates to:
  /// **'All SupplyCo Outlets'**
  String get allSupplycoOutlets;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'{district} District'**
  String district(Object district);

  /// No description provided for @outletFound.
  ///
  /// In en, this message translates to:
  /// **'{count} Outlets Found'**
  String outletFound(Object count);

  /// No description provided for @sortedByDistance.
  ///
  /// In en, this message translates to:
  /// **'Sorted by Distance'**
  String get sortedByDistance;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort >'**
  String get sort;

  /// No description provided for @tapSearchToFind.
  ///
  /// In en, this message translates to:
  /// **'Tap \'Search\' to find the government outlets in {district} that match your query.'**
  String tapSearchToFind(Object district);

  /// No description provided for @pleaseEnterOutlet.
  ///
  /// In en, this message translates to:
  /// **'Please enter an outlet name or shop code or place\nto search for supplyco outlets'**
  String get pleaseEnterOutlet;

  /// No description provided for @continueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get continueAsGuest;

  /// No description provided for @loginRegister.
  ///
  /// In en, this message translates to:
  /// **'Login / Register'**
  String get loginRegister;

  /// No description provided for @profileSettings.
  ///
  /// In en, this message translates to:
  /// **'Profile & Settings'**
  String get profileSettings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @setProfile.
  ///
  /// In en, this message translates to:
  /// **'Set Profile'**
  String get setProfile;

  /// No description provided for @manageAlerts.
  ///
  /// In en, this message translates to:
  /// **'Manage Alerts'**
  String get manageAlerts;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @accessibility.
  ///
  /// In en, this message translates to:
  /// **'Accessibility'**
  String get accessibility;

  /// No description provided for @helpSupport.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSupport;

  /// No description provided for @termsConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsConditions;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @selectYourLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Your Language'**
  String get selectYourLanguage;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @guest.
  ///
  /// In en, this message translates to:
  /// **'GUEST USER'**
  String get guest;

  /// No description provided for @allDistrictsLabel.
  ///
  /// In en, this message translates to:
  /// **'All Districts'**
  String get allDistrictsLabel;

  /// No description provided for @kmAway.
  ///
  /// In en, this message translates to:
  /// **'{distance} km away'**
  String kmAway(Object distance);

  /// No description provided for @locationInfo.
  ///
  /// In en, this message translates to:
  /// **'📍 Location info'**
  String get locationInfo;

  /// No description provided for @viewMoreOutlets.
  ///
  /// In en, this message translates to:
  /// **'View More Outlets'**
  String get viewMoreOutlets;

  /// No description provided for @loadingMoreOutlets.
  ///
  /// In en, this message translates to:
  /// **'__ Loading More Outlets __'**
  String get loadingMoreOutlets;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @enterFullName.
  ///
  /// In en, this message translates to:
  /// **'Enter Full Name'**
  String get enterFullName;

  /// No description provided for @enterMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter Mobile Number'**
  String get enterMobileNumber;

  /// No description provided for @getOTP.
  ///
  /// In en, this message translates to:
  /// **'Get OTP'**
  String get getOTP;

  /// No description provided for @enterOTP.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP'**
  String get enterOTP;

  /// No description provided for @resendOTP.
  ///
  /// In en, this message translates to:
  /// **'Resend OTP'**
  String get resendOTP;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @pleaseEnterNameAndNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name & number'**
  String get pleaseEnterNameAndNumber;

  /// No description provided for @pleaseEnterNameMessage.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get pleaseEnterNameMessage;

  /// No description provided for @pleaseEnterMobileMessage.
  ///
  /// In en, this message translates to:
  /// **'Please enter mobile number'**
  String get pleaseEnterMobileMessage;

  /// No description provided for @pleaseEnterValidMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid 10-digit mobile number'**
  String get pleaseEnterValidMobileNumber;

  /// No description provided for @otpSentSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'OTP sent successfully!'**
  String get otpSentSuccessfully;

  /// No description provided for @numberNotRegistered.
  ///
  /// In en, this message translates to:
  /// **'Number not registered. Please register first.'**
  String get numberNotRegistered;

  /// No description provided for @noAccountFound.
  ///
  /// In en, this message translates to:
  /// **'No account found. Please register first.'**
  String get noAccountFound;

  /// No description provided for @pleaseEnterNameBefore.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name before continuing'**
  String get pleaseEnterNameBefore;

  /// No description provided for @pleaseEnterOTPMessage.
  ///
  /// In en, this message translates to:
  /// **'Please enter OTP'**
  String get pleaseEnterOTPMessage;

  /// No description provided for @registerButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'REGISTER'**
  String get registerButtonLabel;

  /// No description provided for @loginButtonLabel.
  ///
  /// In en, this message translates to:
  /// **'LOGIN'**
  String get loginButtonLabel;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageMalayalam.
  ///
  /// In en, this message translates to:
  /// **'Malayalam'**
  String get languageMalayalam;

  /// No description provided for @languageGujarati.
  ///
  /// In en, this message translates to:
  /// **'Gujarati'**
  String get languageGujarati;

  /// No description provided for @languageMarathi.
  ///
  /// In en, this message translates to:
  /// **'Marathi'**
  String get languageMarathi;

  /// No description provided for @languageHindi.
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get languageHindi;

  /// No description provided for @languageBengali.
  ///
  /// In en, this message translates to:
  /// **'Bengali'**
  String get languageBengali;

  /// No description provided for @languageTamil.
  ///
  /// In en, this message translates to:
  /// **'Tamil'**
  String get languageTamil;

  /// No description provided for @languageTelugu.
  ///
  /// In en, this message translates to:
  /// **'Telugu'**
  String get languageTelugu;

  /// No description provided for @frequentlyAskedQuestions.
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions'**
  String get frequentlyAskedQuestions;

  /// No description provided for @needMoreHelp.
  ///
  /// In en, this message translates to:
  /// **'Need More Help?'**
  String get needMoreHelp;

  /// No description provided for @emailSupport.
  ///
  /// In en, this message translates to:
  /// **'Email Support'**
  String get emailSupport;

  /// No description provided for @phoneSupport.
  ///
  /// In en, this message translates to:
  /// **'Phone Support'**
  String get phoneSupport;

  /// No description provided for @governmentPortal.
  ///
  /// In en, this message translates to:
  /// **'Government Portal'**
  String get governmentPortal;

  /// No description provided for @supportEmail.
  ///
  /// In en, this message translates to:
  /// **'support@mysupplyco.gov.in'**
  String get supportEmail;

  /// No description provided for @supportPhone.
  ///
  /// In en, this message translates to:
  /// **'+91-1800-SUPPLY-GO'**
  String get supportPhone;

  /// No description provided for @supportWebsite.
  ///
  /// In en, this message translates to:
  /// **'www.mysupplyco.gov.in'**
  String get supportWebsite;

  /// No description provided for @faqQ1.
  ///
  /// In en, this message translates to:
  /// **'How do I create an account?'**
  String get faqQ1;

  /// No description provided for @faqA1.
  ///
  /// In en, this message translates to:
  /// **'Download the mySupplyCO app and tap \"Sign Up\". Enter your name, email, and mobile number. You\'ll receive a verification code. Enter it to complete registration.'**
  String get faqA1;

  /// No description provided for @faqQ2.
  ///
  /// In en, this message translates to:
  /// **'How do I check stock availability?'**
  String get faqQ2;

  /// No description provided for @faqA2.
  ///
  /// In en, this message translates to:
  /// **'Once logged in, tap the \"Stock\" tab. You can view real-time inventory from your assigned supply center. Use the search bar to find specific items quickly.'**
  String get faqA2;

  /// No description provided for @faqQ3.
  ///
  /// In en, this message translates to:
  /// **'Who can place orders?'**
  String get faqQ3;

  /// No description provided for @faqA3.
  ///
  /// In en, this message translates to:
  /// **'Government authorized officials registered with mySupplyCO can place orders. Your access level depends on your government organization and role.'**
  String get faqA3;

  /// No description provided for @faqQ4.
  ///
  /// In en, this message translates to:
  /// **'How do I receive notifications?'**
  String get faqQ4;

  /// No description provided for @faqA4.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings → Manage Alerts to enable/disable notifications for stock updates, order status, and system announcements. Push notifications require app permission.'**
  String get faqA4;

  /// No description provided for @faqQ5.
  ///
  /// In en, this message translates to:
  /// **'Is there an offline mode?'**
  String get faqQ5;

  /// No description provided for @faqA5.
  ///
  /// In en, this message translates to:
  /// **'Yes! The app automatically caches recent stock data. You can view previously loaded stock information even without an internet connection.'**
  String get faqA5;

  /// No description provided for @faqQ6.
  ///
  /// In en, this message translates to:
  /// **'How do I reset my password?'**
  String get faqQ6;

  /// No description provided for @faqA6.
  ///
  /// In en, this message translates to:
  /// **'On the login page, tap \"Forgot Password?\" and enter your registered email. You\'ll receive a reset link via email. Follow the instructions to create a new password.'**
  String get faqA6;

  /// No description provided for @governmentSupplyManagementSystem.
  ///
  /// In en, this message translates to:
  /// **'Government Supply Management System'**
  String get governmentSupplyManagementSystem;

  /// No description provided for @pleaseReadTermsCarefully.
  ///
  /// In en, this message translates to:
  /// **'Please read these Terms and Conditions carefully before using the mySupplyCO application. Your access and use of this application is conditioned on your acceptance and compliance with these terms.'**
  String get pleaseReadTermsCarefully;

  /// No description provided for @userAgreement.
  ///
  /// In en, this message translates to:
  /// **'User Agreement'**
  String get userAgreement;

  /// No description provided for @userAgreementContent.
  ///
  /// In en, this message translates to:
  /// **'By accessing and using the mySupplyCO application, you agree to be bound by these Terms and Conditions. This application is designed to facilitate supply chain management for authorized government officials and organizations.'**
  String get userAgreementContent;

  /// No description provided for @eligibility.
  ///
  /// In en, this message translates to:
  /// **'Eligibility'**
  String get eligibility;

  /// No description provided for @eligibilityContent.
  ///
  /// In en, this message translates to:
  /// **'You must be an authorized government official or representative of a government organization to use this application. You agree to provide accurate and complete information during registration and to maintain the confidentiality of your login credentials.'**
  String get eligibilityContent;

  /// No description provided for @acceptableUse.
  ///
  /// In en, this message translates to:
  /// **'Acceptable Use'**
  String get acceptableUse;

  /// No description provided for @acceptableUseContent.
  ///
  /// In en, this message translates to:
  /// **'You agree not to: (a) use the application for unauthorized purposes, (b) attempt to gain unauthorized access to the system, (c) share your account credentials with unauthorized individuals, (d) conduct any illegal activities through the application, or (e) violate any applicable laws or regulations.'**
  String get acceptableUseContent;

  /// No description provided for @userResponsibilities.
  ///
  /// In en, this message translates to:
  /// **'User Responsibilities'**
  String get userResponsibilities;

  /// No description provided for @userResponsibilitiesContent.
  ///
  /// In en, this message translates to:
  /// **'You are solely responsible for: (a) maintaining the security of your account, (b) all activities conducted using your account, (c) ensuring compliance with your government\'s policies, and (d) providing accurate information during transactions and orders.'**
  String get userResponsibilitiesContent;

  /// No description provided for @intellectualProperty.
  ///
  /// In en, this message translates to:
  /// **'Intellectual Property'**
  String get intellectualProperty;

  /// No description provided for @intellectualPropertyContent.
  ///
  /// In en, this message translates to:
  /// **'All content, features, and functionality of the mySupplyCO application are owned by the government agency, protected by copyright and other intellectual property laws. You may not reproduce, distribute, or transmit any content without prior written consent.'**
  String get intellectualPropertyContent;

  /// No description provided for @limitationOfLiability.
  ///
  /// In en, this message translates to:
  /// **'Limitation of Liability'**
  String get limitationOfLiability;

  /// No description provided for @limitationOfLiabilityContent.
  ///
  /// In en, this message translates to:
  /// **'The mySupplyCO application is provided on an \"as-is\" basis. We do not warrant that the service will be uninterrupted or error-free. To the maximum extent permitted by law, we are not liable for any indirect, incidental, special, or consequential damages arising from your use of the application.'**
  String get limitationOfLiabilityContent;

  /// No description provided for @dataAndInformation.
  ///
  /// In en, this message translates to:
  /// **'Data and Information'**
  String get dataAndInformation;

  /// No description provided for @dataAndInformationContent.
  ///
  /// In en, this message translates to:
  /// **'All stock data, orders, and transaction records are the property of the government agency. You agree not to copy, distribute, or use this information for purposes other than official government functions. See our Privacy Policy for details on how we handle personal data.'**
  String get dataAndInformationContent;

  /// No description provided for @accountTermination.
  ///
  /// In en, this message translates to:
  /// **'Account Termination'**
  String get accountTermination;

  /// No description provided for @accountTerminationContent.
  ///
  /// In en, this message translates to:
  /// **'We reserve the right to suspend or terminate your account if you violate these terms, engage in unauthorized use, or fail to comply with government regulations. Termination may be immediate and without further notice.'**
  String get accountTerminationContent;

  /// No description provided for @modificationsToTerms.
  ///
  /// In en, this message translates to:
  /// **'Modifications to Terms'**
  String get modificationsToTerms;

  /// No description provided for @modificationsToTermsContent.
  ///
  /// In en, this message translates to:
  /// **'We may modify these Terms and Conditions at any time. Changes will be effective immediately upon posting. Continued use of the application following any modifications constitutes your acceptance of the updated terms.'**
  String get modificationsToTermsContent;

  /// No description provided for @governingLaw.
  ///
  /// In en, this message translates to:
  /// **'Governing Law'**
  String get governingLaw;

  /// No description provided for @governingLawContent.
  ///
  /// In en, this message translates to:
  /// **'These Terms and Conditions are governed by and construed in accordance with the laws of India. Any legal action or proceeding shall be subject to the jurisdiction of the appropriate courts.'**
  String get governingLawContent;

  /// No description provided for @lastUpdatedTerms.
  ///
  /// In en, this message translates to:
  /// **'⚠ Last Updated: March 2026. These Terms and Conditions apply to all users of the mySupplyCO application. By using this application, you acknowledge that you have read, understood, and agree to be bound by these terms.'**
  String get lastUpdatedTerms;

  /// No description provided for @yourPrivacyIsProtected.
  ///
  /// In en, this message translates to:
  /// **'Your Privacy is Protected'**
  String get yourPrivacyIsProtected;

  /// No description provided for @privacyDescription.
  ///
  /// In en, this message translates to:
  /// **'We collect ONLY 3 pieces of information: Your Name, Email, and Mobile Number. We will NEVER share, sell, or misuse your data. Your information is used exclusively for government supply chain operations.'**
  String get privacyDescription;

  /// No description provided for @dataCollection.
  ///
  /// In en, this message translates to:
  /// **'Data Collection'**
  String get dataCollection;

  /// No description provided for @dataCollectionContent.
  ///
  /// In en, this message translates to:
  /// **'mySupplyCO collects and stores ONLY the following personal information from you during registration and use:'**
  String get dataCollectionContent;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Your Full Name'**
  String get fullName;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Your Email Address'**
  String get emailAddress;

  /// No description provided for @mobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Your Mobile Number'**
  String get mobileNumber;

  /// No description provided for @dataUsage.
  ///
  /// In en, this message translates to:
  /// **'Data Usage'**
  String get dataUsage;

  /// No description provided for @dataUsageContent.
  ///
  /// In en, this message translates to:
  /// **'Your personal data is used exclusively for:'**
  String get dataUsageContent;

  /// No description provided for @accountAuthentication.
  ///
  /// In en, this message translates to:
  /// **'Account authentication and login'**
  String get accountAuthentication;

  /// No description provided for @orderConfirmations.
  ///
  /// In en, this message translates to:
  /// **'Sending order confirmations and updates'**
  String get orderConfirmations;

  /// No description provided for @customerSupport.
  ///
  /// In en, this message translates to:
  /// **'Providing customer support'**
  String get customerSupport;

  /// No description provided for @stockNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifying you of stock changes and system alerts'**
  String get stockNotifications;

  /// No description provided for @governmentFunctions.
  ///
  /// In en, this message translates to:
  /// **'Fulfilling government supply chain management functions'**
  String get governmentFunctions;

  /// No description provided for @whatWeDoNotDo.
  ///
  /// In en, this message translates to:
  /// **'What We Do NOT Do'**
  String get whatWeDoNotDo;

  /// No description provided for @doNotSellData.
  ///
  /// In en, this message translates to:
  /// **'We do NOT sell, share, or trade your personal data'**
  String get doNotSellData;

  /// No description provided for @doNotMarketData.
  ///
  /// In en, this message translates to:
  /// **'We do NOT use your data for marketing or advertising'**
  String get doNotMarketData;

  /// No description provided for @doNotShareThirdParty.
  ///
  /// In en, this message translates to:
  /// **'We do NOT share your data with third-party companies'**
  String get doNotShareThirdParty;

  /// No description provided for @doNotUseOutsideGov.
  ///
  /// In en, this message translates to:
  /// **'We do NOT use your data for purposes outside government supply functions'**
  String get doNotUseOutsideGov;

  /// No description provided for @doNotCombineData.
  ///
  /// In en, this message translates to:
  /// **'We do NOT combine your data with external sources'**
  String get doNotCombineData;

  /// No description provided for @dataSecurity.
  ///
  /// In en, this message translates to:
  /// **'Data Security'**
  String get dataSecurity;

  /// No description provided for @dataSecurityContent.
  ///
  /// In en, this message translates to:
  /// **'We implement industry-standard security measures to protect your personal information:'**
  String get dataSecurityContent;

  /// No description provided for @encryptedTransmission.
  ///
  /// In en, this message translates to:
  /// **'Encrypted data transmission (SSL/TLS)'**
  String get encryptedTransmission;

  /// No description provided for @secureServers.
  ///
  /// In en, this message translates to:
  /// **'Secure server infrastructure'**
  String get secureServers;

  /// No description provided for @limitedAccess.
  ///
  /// In en, this message translates to:
  /// **'Limited access to personal data (authorized personnel only)'**
  String get limitedAccess;

  /// No description provided for @securityAudits.
  ///
  /// In en, this message translates to:
  /// **'Regular security audits and updates'**
  String get securityAudits;

  /// No description provided for @governmentCompliance.
  ///
  /// In en, this message translates to:
  /// **'Compliance with government data protection standards'**
  String get governmentCompliance;

  /// No description provided for @yourRights.
  ///
  /// In en, this message translates to:
  /// **'Your Rights'**
  String get yourRights;

  /// No description provided for @yourRightsContent.
  ///
  /// In en, this message translates to:
  /// **'You have the right to:'**
  String get yourRightsContent;

  /// No description provided for @accessData.
  ///
  /// In en, this message translates to:
  /// **'Access your personal data at any time'**
  String get accessData;

  /// No description provided for @correctData.
  ///
  /// In en, this message translates to:
  /// **'Request correction of inaccurate information'**
  String get correctData;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Request deletion of your account and data'**
  String get deleteAccount;

  /// No description provided for @obtainCopy.
  ///
  /// In en, this message translates to:
  /// **'Obtain a copy of your personal information'**
  String get obtainCopy;

  /// No description provided for @withdrawConsent.
  ///
  /// In en, this message translates to:
  /// **'Withdraw consent for data usage'**
  String get withdrawConsent;

  /// No description provided for @dataRetention.
  ///
  /// In en, this message translates to:
  /// **'Data Retention'**
  String get dataRetention;

  /// No description provided for @dataRetentionContent.
  ///
  /// In en, this message translates to:
  /// **'Your personal data is retained only as long as is necessary for government supply management functions. Upon account deletion, your data will be permanently removed from our systems within 30 days, except where required by law.'**
  String get dataRetentionContent;

  /// No description provided for @changesToPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Changes to Privacy Policy'**
  String get changesToPrivacyPolicy;

  /// No description provided for @changesToPrivacyPolicyContent.
  ///
  /// In en, this message translates to:
  /// **'We may update this Privacy Policy periodically. We will notify users of any significant changes via email or through the application. Your continued use of mySupplyCO constitutes acceptance of the updated policy.'**
  String get changesToPrivacyPolicyContent;

  /// No description provided for @contactUsPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUsPrivacy;

  /// No description provided for @contactUsPrivacyContent.
  ///
  /// In en, this message translates to:
  /// **'If you have questions about this Privacy Policy or your personal data, please contact us at:'**
  String get contactUsPrivacyContent;

  /// No description provided for @privacyEmail.
  ///
  /// In en, this message translates to:
  /// **'Email: privacy@mysupplyco.gov.in'**
  String get privacyEmail;

  /// No description provided for @privacyPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone: +91-1800-SUPPLY-GO'**
  String get privacyPhone;

  /// No description provided for @privacyPortal.
  ///
  /// In en, this message translates to:
  /// **'Portal: www.mysupplyco.gov.in'**
  String get privacyPortal;

  /// No description provided for @lastUpdatedPrivacy.
  ///
  /// In en, this message translates to:
  /// **'📋 Last Updated: March 2026. This Privacy Policy is part of the mySupplyCO Terms of Service. By using this application, you consent to our privacy practices as outlined herein.'**
  String get lastUpdatedPrivacy;

  /// No description provided for @privacyPolicyPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyPageTitle;

  /// No description provided for @termsConditionsPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsConditionsPageTitle;

  /// No description provided for @helpSupportPageTitle.
  ///
  /// In en, this message translates to:
  /// **'Help & Support'**
  String get helpSupportPageTitle;

  /// No description provided for @helpFaqCreateAccount.
  ///
  /// In en, this message translates to:
  /// **'How do I create an account?'**
  String get helpFaqCreateAccount;

  /// No description provided for @helpFaqCreateAccountAns.
  ///
  /// In en, this message translates to:
  /// **'Download the MySupplyCo app and tap \"Register\". enter your name,and you can either use your google account or mobile number to login.If you are using mobile number,then otp verification is required.'**
  String get helpFaqCreateAccountAns;

  /// No description provided for @helpFaqCheckStock.
  ///
  /// In en, this message translates to:
  /// **'How do I check stock availability?'**
  String get helpFaqCheckStock;

  /// No description provided for @helpFaqCheckStockAns.
  ///
  /// In en, this message translates to:
  /// **'Once logged in, tap the \"Stock\" tab. You can view real-time inventory from your assigned supply center. Use the search bar to find specific items quickly.'**
  String get helpFaqCheckStockAns;

  /// No description provided for @helpFaqNotifications.
  ///
  /// In en, this message translates to:
  /// **'How do I receive notifications?'**
  String get helpFaqNotifications;

  /// No description provided for @helpFaqNotificationsAns.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings → Manage Alerts to enable/disable notifications for stock updates,and system announcements. Push notifications require app permission.'**
  String get helpFaqNotificationsAns;

  /// No description provided for @helpFaqOfflineMode.
  ///
  /// In en, this message translates to:
  /// **'Is there an offline mode?'**
  String get helpFaqOfflineMode;

  /// No description provided for @helpFaqOfflineModeAns.
  ///
  /// In en, this message translates to:
  /// **'Yes! The app automatically caches recent stock data. You can view previously loaded stock information even without an internet connection.'**
  String get helpFaqOfflineModeAns;

  /// No description provided for @governmentPortalText.
  ///
  /// In en, this message translates to:
  /// **'Government Portal'**
  String get governmentPortalText;

  /// No description provided for @privacyDataCollection.
  ///
  /// In en, this message translates to:
  /// **'Data Collection'**
  String get privacyDataCollection;

  /// No description provided for @privacyDataCollectionContent.
  ///
  /// In en, this message translates to:
  /// **'MySupplyCo collects and stores only the following personal information from you during registration and use:'**
  String get privacyDataCollectionContent;

  /// No description provided for @privacyFullName.
  ///
  /// In en, this message translates to:
  /// **'Your Full Name'**
  String get privacyFullName;

  /// No description provided for @privacyEmailAddress.
  ///
  /// In en, this message translates to:
  /// **'Your Email Address'**
  String get privacyEmailAddress;

  /// No description provided for @privacyMobileNumber.
  ///
  /// In en, this message translates to:
  /// **'Your Mobile Number'**
  String get privacyMobileNumber;

  /// No description provided for @privacyDataUsage.
  ///
  /// In en, this message translates to:
  /// **'Data Usage'**
  String get privacyDataUsage;

  /// No description provided for @privacyDataUsageContent.
  ///
  /// In en, this message translates to:
  /// **'Your personal data is used exclusively for:'**
  String get privacyDataUsageContent;

  /// No description provided for @privacyAccountAuthentication.
  ///
  /// In en, this message translates to:
  /// **'Account authentication and login'**
  String get privacyAccountAuthentication;

  /// No description provided for @privacyCustomerSupport.
  ///
  /// In en, this message translates to:
  /// **'Providing customer support'**
  String get privacyCustomerSupport;

  /// No description provided for @privacyStockNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifying you of stock changes and system alerts'**
  String get privacyStockNotifications;

  /// No description provided for @privacyWhatWeDoNotDo.
  ///
  /// In en, this message translates to:
  /// **'What we do not do'**
  String get privacyWhatWeDoNotDo;

  /// No description provided for @privacyDoNotSell.
  ///
  /// In en, this message translates to:
  /// **'We do not sell, share, or trade your personal data'**
  String get privacyDoNotSell;

  /// No description provided for @privacyDoNotMarket.
  ///
  /// In en, this message translates to:
  /// **'We do not use your data for marketing or advertising'**
  String get privacyDoNotMarket;

  /// No description provided for @privacyDoNotShareThirdParty.
  ///
  /// In en, this message translates to:
  /// **'We do not share your data with third-party companies'**
  String get privacyDoNotShareThirdParty;

  /// No description provided for @privacyDoNotUseOutsideGov.
  ///
  /// In en, this message translates to:
  /// **'We do not use your data for purposes outside government supply functions'**
  String get privacyDoNotUseOutsideGov;

  /// No description provided for @privacyDoNotCombineData.
  ///
  /// In en, this message translates to:
  /// **'We do not combine your data with external sources'**
  String get privacyDoNotCombineData;

  /// No description provided for @privacyDataSecurity.
  ///
  /// In en, this message translates to:
  /// **'Data Security'**
  String get privacyDataSecurity;

  /// No description provided for @privacyDataSecurityContent.
  ///
  /// In en, this message translates to:
  /// **'We implement industry-standard security measures to protect your personal information:'**
  String get privacyDataSecurityContent;

  /// No description provided for @privacySecureServers.
  ///
  /// In en, this message translates to:
  /// **'Secure server infrastructure'**
  String get privacySecureServers;

  /// No description provided for @privacyLimitedAccess.
  ///
  /// In en, this message translates to:
  /// **'Limited access to personal data (authorized personnel only)'**
  String get privacyLimitedAccess;

  /// No description provided for @privacySecurityAudits.
  ///
  /// In en, this message translates to:
  /// **'Regular security audits and updates'**
  String get privacySecurityAudits;

  /// No description provided for @privacyGovernmentCompliance.
  ///
  /// In en, this message translates to:
  /// **'Compliance with government data protection standards'**
  String get privacyGovernmentCompliance;

  /// No description provided for @privacyYourRights.
  ///
  /// In en, this message translates to:
  /// **'Your Rights'**
  String get privacyYourRights;

  /// No description provided for @privacyYourRightsContent.
  ///
  /// In en, this message translates to:
  /// **'You have the right to:'**
  String get privacyYourRightsContent;

  /// No description provided for @privacyAccessData.
  ///
  /// In en, this message translates to:
  /// **'Access your personal data at any time'**
  String get privacyAccessData;

  /// No description provided for @privacyCorrectData.
  ///
  /// In en, this message translates to:
  /// **'Request correction of inaccurate information'**
  String get privacyCorrectData;

  /// No description provided for @privacyDeleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Request deletion of your account and data'**
  String get privacyDeleteAccount;

  /// No description provided for @privacyWithdrawConsent.
  ///
  /// In en, this message translates to:
  /// **'Withdraw consent for data usage'**
  String get privacyWithdrawConsent;

  /// No description provided for @privacyDataRetention.
  ///
  /// In en, this message translates to:
  /// **'Data Retention'**
  String get privacyDataRetention;

  /// No description provided for @privacyDataRetentionContent.
  ///
  /// In en, this message translates to:
  /// **'Your personal data is retained only as long as is necessary for government supply management functions. Upon account deletion, your data will be permanently removed from our systems within 30 days, except where required by law.'**
  String get privacyDataRetentionContent;

  /// No description provided for @privacyChangesToPolicy.
  ///
  /// In en, this message translates to:
  /// **'Changes to Privacy Policy'**
  String get privacyChangesToPolicy;

  /// No description provided for @privacyChangesToPolicyContent.
  ///
  /// In en, this message translates to:
  /// **'We may update this Privacy Policy periodically. We will notify users of any significant changes via email or through the application. Your continued use of MySupplyCo constitutes acceptance of the updated policy.'**
  String get privacyChangesToPolicyContent;

  /// No description provided for @privacyProtectedTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Privacy is Protected'**
  String get privacyProtectedTitle;

  /// No description provided for @privacyProtectedDescription.
  ///
  /// In en, this message translates to:
  /// **'We collect ONLY 3 pieces of information: Your Name, Email, and Mobile Number. We will NEVER share, sell, or misuse your data. Your information is used exclusively for government supply chain operations.'**
  String get privacyProtectedDescription;

  /// No description provided for @privacyFooterNote.
  ///
  /// In en, this message translates to:
  /// **'📋 Last Updated: March 2026. This Privacy Policy is part of the MySupplyCo Terms of Service. By using this application, you consent to our privacy practices as outlined herein.'**
  String get privacyFooterNote;

  /// No description provided for @termsGovernmentSupplyManagementSystem.
  ///
  /// In en, this message translates to:
  /// **'Government Supply Management System'**
  String get termsGovernmentSupplyManagementSystem;

  /// No description provided for @termsIntroContent.
  ///
  /// In en, this message translates to:
  /// **'Please read these Terms and Conditions carefully before using the MySupplyCo application. Your access and use of this application is conditioned on your acceptance and compliance with these terms.'**
  String get termsIntroContent;

  /// No description provided for @termsUserAgreement.
  ///
  /// In en, this message translates to:
  /// **'User Agreement'**
  String get termsUserAgreement;

  /// No description provided for @termsUserAgreementContent.
  ///
  /// In en, this message translates to:
  /// **'By accessing and using the MySupplyCo application, you agree to be bound by these Terms and Conditions. This application is designed to facilitate supply chain management for authorized government officials and organizations.'**
  String get termsUserAgreementContent;

  /// No description provided for @termsEligibility.
  ///
  /// In en, this message translates to:
  /// **'Eligibility'**
  String get termsEligibility;

  /// No description provided for @termsEligibilityContent.
  ///
  /// In en, this message translates to:
  /// **'You must be an authorized citizen to use this application. You agree to provide accurate and complete information during registration and to maintain the confidentiality of your login credentials.'**
  String get termsEligibilityContent;

  /// No description provided for @termsAcceptableUse.
  ///
  /// In en, this message translates to:
  /// **'Acceptable Use'**
  String get termsAcceptableUse;

  /// No description provided for @termsAcceptableUseContent.
  ///
  /// In en, this message translates to:
  /// **'You agree not to: (a) use the application for unauthorized purposes, (b) attempt to gain unauthorized access to the system, (c) share your account credentials with unauthorized individuals, (d) conduct any illegal activities through the application, or (e) violate any applicable laws or regulations.'**
  String get termsAcceptableUseContent;

  /// No description provided for @termsUserResponsibilities.
  ///
  /// In en, this message translates to:
  /// **'User Responsibilities'**
  String get termsUserResponsibilities;

  /// No description provided for @termsUserResponsibilitiesContent.
  ///
  /// In en, this message translates to:
  /// **'You are solely responsible for: (a) maintaining the security of your account, (b) all activities conducted using your account, (c) ensuring compliance with your government\'s policies, and (d) providing accurate information during transactions and orders.'**
  String get termsUserResponsibilitiesContent;

  /// No description provided for @termsIntellectualProperty.
  ///
  /// In en, this message translates to:
  /// **'Intellectual Property'**
  String get termsIntellectualProperty;

  /// No description provided for @termsIntellectualPropertyContent.
  ///
  /// In en, this message translates to:
  /// **'All content, features, and functionality of the MySupplyCo application are owned by the government agency, protected by copyright and other intellectual property laws. You may not reproduce, distribute, or transmit any content without prior written consent.'**
  String get termsIntellectualPropertyContent;

  /// No description provided for @termsLimitationOfLiability.
  ///
  /// In en, this message translates to:
  /// **'Limitation of Liability'**
  String get termsLimitationOfLiability;

  /// No description provided for @termsLimitationOfLiabilityContent.
  ///
  /// In en, this message translates to:
  /// **'The MySupplyCo application is provided on an \"as-is\" basis. We do not warrant that the service will be uninterrupted or error-free. To the maximum extent permitted by law, we are not liable for any indirect, incidental, special, or consequential damages arising from your use of the application.'**
  String get termsLimitationOfLiabilityContent;

  /// No description provided for @termsDataAndInformation.
  ///
  /// In en, this message translates to:
  /// **'Data and Information'**
  String get termsDataAndInformation;

  /// No description provided for @termsDataAndInformationContent.
  ///
  /// In en, this message translates to:
  /// **'All stock data, and transaction records are the property of the government agency. You agree not to copy, distribute, or use this information for purposes other than official government functions. See our Privacy Policy for details on how we handle personal data.'**
  String get termsDataAndInformationContent;

  /// No description provided for @termsAccountTermination.
  ///
  /// In en, this message translates to:
  /// **'Account Termination'**
  String get termsAccountTermination;

  /// No description provided for @termsAccountTerminationContent.
  ///
  /// In en, this message translates to:
  /// **'We reserve the right to suspend or terminate your account if you violate these terms, engage in unauthorized use, or fail to comply with government regulations. Termination may be immediate and without further notice.'**
  String get termsAccountTerminationContent;

  /// No description provided for @termsModificationsToTerms.
  ///
  /// In en, this message translates to:
  /// **'Modifications to Terms'**
  String get termsModificationsToTerms;

  /// No description provided for @termsModificationsToTermsContent.
  ///
  /// In en, this message translates to:
  /// **'We may modify these Terms and Conditions at any time. Changes will be effective immediately upon posting. Continued use of the application following any modifications constitutes your acceptance of the updated terms.'**
  String get termsModificationsToTermsContent;

  /// No description provided for @termsGoverningLaw.
  ///
  /// In en, this message translates to:
  /// **'Governing Law'**
  String get termsGoverningLaw;

  /// No description provided for @termsGoverningLawContent.
  ///
  /// In en, this message translates to:
  /// **'These Terms and Conditions are governed by and construed in accordance with the laws of India. Any legal action or proceeding shall be subject to the jurisdiction of the appropriate courts.'**
  String get termsGoverningLawContent;

  /// No description provided for @termsFooterNote.
  ///
  /// In en, this message translates to:
  /// **'⚠ Last Updated: March 2026. These Terms and Conditions apply to all users of the MySupplyCo application. By using this application, you acknowledge that you have read, understood, and agree to be bound by these terms.'**
  String get termsFooterNote;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'bn',
    'en',
    'gu',
    'hi',
    'ml',
    'mr',
    'ta',
    'te',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'ml':
      return AppLocalizationsMl();
    case 'mr':
      return AppLocalizationsMr();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
