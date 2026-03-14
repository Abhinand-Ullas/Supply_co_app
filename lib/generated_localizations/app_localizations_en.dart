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
}
