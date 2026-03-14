// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get appTitle => 'மைசப்ளை கோ';

  @override
  String get searchSupplycoOutlets => 'சப்ளை கோ விற்பனை நிலையம் தேடுக';

  @override
  String get selectDistrict => 'மாவட்டம் தேர்ந்தெடுக்கவும்';

  @override
  String get searchByNamePlaceCode => 'பெயர், இடம் அல்லது குறியீட்டால் தேடுக';

  @override
  String get searchButton => 'தேடுக';

  @override
  String get searchResults => 'தேடல் முடிவுகள்';

  @override
  String get lastVisited => 'கடைசி பார்வை';

  @override
  String get viewStock => 'பங்கு பார்';

  @override
  String get selectedOutlet => 'தேர்ந்தெடுக்கப்பட்ட விற்பனை நிலையம்';

  @override
  String get viewMore => 'மேலும் பார்க்க';

  @override
  String get noOutletsFound => 'எந்த விற்பனை நிலையமும் கண்டுபிடிக்கப்படவில்லை.';

  @override
  String get allSupplycoOutlets => 'அனைத்து சப்ளை கோ விற்பனை நிலையம்';

  @override
  String district(Object district) {
    return '$district மாவட்டம்';
  }

  @override
  String outletFound(Object count) {
    return '$count விற்பனை நிலையம் கண்டுபிடிக்கப்பட்டது';
  }

  @override
  String get sortedByDistance => 'தூரத்தால் வரிசைப்படுத்தப்பட்ட';

  @override
  String get sort => 'வரிசைப்படுத்தவும் >';

  @override
  String tapSearchToFind(Object district) {
    return 'அரசு விற்பனை நிலையம் தேட \'தேடுக\' பொத்தானைப் பயன்படுத்தவும் $district இல் உங்கள் வினாவுடன் பொருந்தும்.';
  }

  @override
  String get pleaseEnterOutlet =>
      'விற்பனை நிலையத்தின் பெயர் அல்லது கடையின் குறியீடு அல்லது இடம் உள்ளிடவும்\nசப்ளை கோ விற்பனை நிலையம் தேட';

  @override
  String get continueAsGuest => 'விருந்தினராக தொடரவும்';

  @override
  String get loginRegister => 'உள்நுழைக / பதிவு செய்க';

  @override
  String get profileSettings => 'சுயவிவரம் மற்றும் அமைப்புகள்';

  @override
  String get settings => 'அமைப்புகள்';

  @override
  String get setProfile => 'சுயவிவரம் அமைக்கவும்';

  @override
  String get manageAlerts => 'எச்சரிக்கைகளைப் பরிचालனை செய்க';

  @override
  String get language => 'மொழி';

  @override
  String get accessibility => 'அணுகல் தன்மை';

  @override
  String get helpSupport => 'உதவி மற்றும் ஆதரவு';

  @override
  String get termsConditions => 'விதிமுறைகள் மற்றும் நிபந்தனைகள்';

  @override
  String get privacyPolicy => 'தனிமை கொள்கை';

  @override
  String get logout => 'வெளியேறவும்';

  @override
  String get selectYourLanguage => 'உங்கள் மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get cancel => 'ரத்துசெய்க';

  @override
  String get confirm => 'உறுதிப்படுத்தவும்';

  @override
  String get guest => 'விருந்தினர் பயனாளர்';

  @override
  String get allDistrictsLabel => 'அனைத்து மாவட்டங்கள்';

  @override
  String kmAway(Object distance) {
    return '$distance கிமீ தொலைவில்';
  }

  @override
  String get locationInfo => '📍 இட தகவல்';

  @override
  String get viewMoreOutlets => 'மேலும் விற்பனை நிலையம் பார்க்க';

  @override
  String get loadingMoreOutlets =>
      '__ மேலும் விற்பனை நிலையம் ஏற்றப்படுகிறது __';

  @override
  String get register => 'பதிவு செய்க';

  @override
  String get login => 'உள்நுழைக';

  @override
  String get enterFullName => 'முழு பெயர் உள்ளிடவும்';

  @override
  String get enterMobileNumber => 'மொபைல் எண் உள்ளிடவும்';

  @override
  String get getOTP => 'OTP பெறுக';

  @override
  String get enterOTP => 'OTP உள்ளிடவும்';

  @override
  String get resendOTP => 'OTP மீண்டும் அனுப்பவும்';

  @override
  String get continueWithGoogle => 'கூகளுடன் தொடரவும்';

  @override
  String get or => 'அல்லது';

  @override
  String get pleaseEnterNameAndNumber => 'உங்கள் பெயர் மற்றும் எண் உள்ளிடவும்';

  @override
  String get pleaseEnterNameMessage => 'உங்கள் பெயர் உள்ளிடவும்';

  @override
  String get pleaseEnterMobileMessage => 'மொபைல் எண் உள்ளிடவும்';

  @override
  String get pleaseEnterValidMobileNumber =>
      'செல்லுபடியாகும் 10 இலக்க மொபைல் எண் உள்ளிடவும்';

  @override
  String get otpSentSuccessfully => 'OTP வெற்றிகரமாக அனுப்பப்பட்டது!';

  @override
  String get numberNotRegistered =>
      'எண் பதிவு செய்யப்படவில்லை. முதலில் பதிவு செய்யவும்.';

  @override
  String get noAccountFound =>
      'கணக்கு கணக்கிறிய்யப்படவில்லை. முதலில் பதிவு செய்யவும்.';

  @override
  String get pleaseEnterNameBefore => 'தொடரும் முன் உங்கள் பெயர் உள்ளிடவும்';

  @override
  String get pleaseEnterOTPMessage => 'OTP உள்ளிடவும்';

  @override
  String get registerButtonLabel => 'பதிவு செய்க';

  @override
  String get loginButtonLabel => 'உள்நுழைக';

  @override
  String get languageEnglish => 'ஆங்கிலம்';

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
