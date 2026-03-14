// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get appTitle => 'മൈസപ്ലൈകോ';

  @override
  String get searchSupplycoOutlets => 'സപ്ലൈകോ ഔട്ട്‌ലെറ്റ് തിരയുക';

  @override
  String get selectDistrict => 'ജില്ല  തിരഞ്ഞെടുക്കുക';

  @override
  String get searchByNamePlaceCode => 'സ്ഥലപേരോ  അല്ലെങ്കിൽ കോഡ് വഴിയോ തിരയുക';

  @override
  String get searchButton => 'തിരയുക';

  @override
  String get searchResults => 'ഫലങ്ങൾ';

  @override
  String get lastVisited => 'കഴിഞ്ഞ സന്ദർശനം';

  @override
  String get viewStock => 'സ്റ്റോക്ക് കാണുക';

  @override
  String get selectedOutlet => 'തിരഞ്ഞെടുത്ത ഔട്ട്‌ലെറ്റ്';

  @override
  String get viewMore => 'കൂടുതൽ കാണുക';

  @override
  String get noOutletsFound => 'ഔട്ട്‌ലെറ്റ് കണ്ടെത്തിയില്ല.';

  @override
  String get allSupplycoOutlets => 'എല്ലാ സപ്ലൈ കോ ഔട്ട്‌ലെറ്റ്';

  @override
  String district(Object district) {
    return '$district ജില്ല';
  }

  @override
  String outletFound(Object count) {
    return '$count ഔട്ട്‌ലെറ്റ് കണ്ടെത്തി';
  }

  @override
  String get sortedByDistance => 'ദൂരം അനുസരിച്ച് ക്രമീകരികുക';

  @override
  String get sort => 'ക്രമീകരിക്കുക >';

  @override
  String tapSearchToFind(Object district) {
    return 'സർക്കാർ ഔട്ട്‌ലെറ്റ് കണ്ടെത്താൻ \'തിരയുക\' വാരിയെണ്ണ $district ത് നിങ്ങളുടെ ചോദ്യവുമായി പൊരുത്തപ്പെടുന്നത്.';
  }

  @override
  String get pleaseEnterOutlet =>
      'ഔട്ട്‌ലെറ്റിന്റെ പേരോ കടയുടെ കോഡോ സ്ഥലമോ നൽകുക\nസപ്ലൈ കോ ഔട്ട്‌ലെറ്റ് തിരയാൻ';

  @override
  String get continueAsGuest => 'അതിഥി ആയി തുടരുക';

  @override
  String get loginRegister => 'ലോഗിൻ / രജിസ്റ്റർ ചെയ്യുക';

  @override
  String get profileSettings => 'പ്രൊഫൈൽ ഓപ്ഷനുകൾ';

  @override
  String get settings => 'ക്രമീകരണം';

  @override
  String get setProfile => 'പ്രൊഫൈൽ സജ്ജമാക്കുക';

  @override
  String get manageAlerts => 'അലേർട്ട് നിയന്ത്രിക്കുക';

  @override
  String get language => 'ഭാഷ';

  @override
  String get accessibility => 'പ്രവേശനാധികാരം';

  @override
  String get helpSupport => 'സഹായതയും പിന്തുണയും';

  @override
  String get termsConditions => 'നിബന്ധനകൾ';

  @override
  String get privacyPolicy => 'ഗൌപ്യതാ നയം';

  @override
  String get logout => 'പുറത്തുകടക്കുക';

  @override
  String get selectYourLanguage => 'നിങ്ങളുടെ ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get confirm => 'സ്ഥിരീകരിക്കുക';

  @override
  String get guest => 'അതിഥി';

  @override
  String get allDistrictsLabel => 'എല്ലാ ജില്ലകളും ';

  @override
  String kmAway(Object distance) {
    return '$distance കിലോമീറ്റർ ദൂരത്തിൽ';
  }

  @override
  String get locationInfo => '📍 സ്ഥാന വിവരം';

  @override
  String get viewMoreOutlets => 'കൂടുതൽ ഔട്ട്‌ലെറ്റ് കാണുക';

  @override
  String get loadingMoreOutlets =>
      '__ കൂടുതൽ ഔട്ട്‌ലെറ്റ് ലോഡ് ആയിരിക്കുന്നു __';

  @override
  String get register => 'രജിസ്‌ട്റേഷൻ';

  @override
  String get login => 'ലോഗിൻ';

  @override
  String get enterFullName => 'പൂർണ്ണ നാമം നൽകുക';

  @override
  String get enterMobileNumber => 'മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get getOTP => 'OTP നേടുക';

  @override
  String get enterOTP => 'OTP നൽകുക';

  @override
  String get resendOTP => 'OTP വീണ്ടും അയയ്ക്കുക';

  @override
  String get continueWithGoogle => 'ഗൂഗിൾ ഉപയോഗിച്ച് തുടരുക';

  @override
  String get or => 'അല്ലെങ്കിൽ';

  @override
  String get pleaseEnterNameAndNumber => 'നാമവും നമ്പരും നൽകുക';

  @override
  String get pleaseEnterNameMessage => 'നാമം നൽകുക';

  @override
  String get pleaseEnterMobileMessage => 'മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get pleaseEnterValidMobileNumber =>
      'സാധുവായ 10-അക്ക മൊബൈൽ നമ്പർ നൽകുക';

  @override
  String get otpSentSuccessfully => 'OTP വിജയകരമായി അയച്ചു!';

  @override
  String get numberNotRegistered =>
      'നമ്പർ രജിസ്‌ട്റർ ചെയ്തിട്ടില്ല. ആദ്യം രജിസ്‌ട്റർ ചെയ്യുക.';

  @override
  String get noAccountFound =>
      'അക്കൗണ്ട് കണ്ടെത്തിയില്ല. ആദ്യം രജിസ്‌ട്റർ ചെയ്യുക.';

  @override
  String get pleaseEnterNameBefore => 'തുടരുന്നതിന് മുമ്പ് നാമം നൽകുക';

  @override
  String get pleaseEnterOTPMessage => 'OTP നൽകുക';

  @override
  String get registerButtonLabel => 'രജിസ്‌ട്റഷൻ';

  @override
  String get loginButtonLabel => 'ലോഗിൻ';

  @override
  String get languageEnglish => 'ഇംഗ്ലീഷ്';

  @override
  String get languageMalayalam => 'മലയാളം';

  @override
  String get languageGujarati => 'ગુજરાતી';

  @override
  String get languageMarathi => 'मराठी';

  @override
  String get languageHindi => 'हिन्दी';

  @override
  String get languageBengali => 'বাংলা';

  @override
  String get languageTamil => 'தமிழ்';

  @override
  String get languageTelugu => 'తెలుగు';
}
