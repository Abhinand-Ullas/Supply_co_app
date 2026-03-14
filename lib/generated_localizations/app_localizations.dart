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
