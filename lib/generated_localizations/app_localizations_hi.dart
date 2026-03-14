// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'माइसपली को';

  @override
  String get searchSupplycoOutlets => 'सपली को आउटलेट खोजें';

  @override
  String get selectDistrict => 'जिला चुनें';

  @override
  String get searchByNamePlaceCode => 'नाम, स्थान या कोड से खोजें';

  @override
  String get searchButton => 'खोजें';

  @override
  String get searchResults => 'खोज के परिणाम';

  @override
  String get lastVisited => 'अंतिम बार देखा गया';

  @override
  String get viewStock => 'स्टॉक देखें';

  @override
  String get selectedOutlet => 'चयनित आउटलेट';

  @override
  String get viewMore => 'और देखें';

  @override
  String get noOutletsFound => 'कोई आउटलेट नहीं मिला।';

  @override
  String get allSupplycoOutlets => 'सभी सपली को आउटलेट';

  @override
  String district(Object district) {
    return '$district जिला';
  }

  @override
  String outletFound(Object count) {
    return '$count आउटलेट मिले';
  }

  @override
  String get sortedByDistance => 'दूरी के अनुसार क्रमबद्ध';

  @override
  String get sort => 'क्रमबद्ध करें >';

  @override
  String tapSearchToFind(Object district) {
    return 'सरकारी आउटलेट खोजने के लिए \'खोजें\' पर टैप करें जो $district में आपकी खोज से मेल खाते हैं।';
  }

  @override
  String get pleaseEnterOutlet =>
      'किसी आउटलेट का नाम, दुकान कोड या स्थान दर्ज करें\nसपली को आउटलेट खोजने के लिए';

  @override
  String get continueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String get loginRegister => 'लॉगिन / रजिस्टर करें';

  @override
  String get profileSettings => 'प्रोफ़ाइल और सेटिंग्स';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get setProfile => 'प्रोफ़ाइल सेट करें';

  @override
  String get manageAlerts => 'सतर्कताएं प्रबंधित करें';

  @override
  String get language => 'भाषा';

  @override
  String get accessibility => 'पहुँच';

  @override
  String get helpSupport => 'सहायता और समर्थन';

  @override
  String get termsConditions => 'शर्तें और शर्तें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get logout => 'लॉगआउट करें';

  @override
  String get selectYourLanguage => 'अपनी भाषा चुनें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get guest => 'अतिथि उपयोगकर्ता';

  @override
  String get allDistrictsLabel => 'सभी जिले';

  @override
  String kmAway(Object distance) {
    return '$distance किमी दूर';
  }

  @override
  String get locationInfo => '📍 स्थान की जानकारी';

  @override
  String get viewMoreOutlets => 'और आउटलेट देखें';

  @override
  String get loadingMoreOutlets => '__ और आउटलेट लोड हो रहे हैं __';

  @override
  String get register => 'रजिस्टर करें';

  @override
  String get login => 'लॉगिन करें';

  @override
  String get enterFullName => 'पूरा नाम दर्ज करें';

  @override
  String get enterMobileNumber => 'मोबाइल नंबर दर्ज करें';

  @override
  String get getOTP => 'OTP प्राप्त करें';

  @override
  String get enterOTP => 'OTP दर्ज करें';

  @override
  String get resendOTP => 'OTP दोबारा भेजें';

  @override
  String get continueWithGoogle => 'गूगल से जारी रखें';

  @override
  String get or => 'या';

  @override
  String get pleaseEnterNameAndNumber => 'कृपया अपना नाम और नंबर दर्ज करें';

  @override
  String get pleaseEnterNameMessage => 'कृपया अपना नाम दर्ज करें';

  @override
  String get pleaseEnterMobileMessage => 'कृपया मोबाइल नंबर दर्ज करें';

  @override
  String get pleaseEnterValidMobileNumber =>
      'कृपया एक वैध 10-अंकीय मोबाइल नंबर दर्ज करें';

  @override
  String get otpSentSuccessfully => 'OTP सफलतापूर्वक भेज दिया गया!';

  @override
  String get numberNotRegistered =>
      'नंबर पंजीकृत नहीं है। कृपया पहले रजिस्टर करें।';

  @override
  String get noAccountFound => 'कोई खाता नहीं मिला। कृपया पहले रजिस्टर करें।';

  @override
  String get pleaseEnterNameBefore =>
      'जारी रखने से पहले कृपया अपना नाम दर्ज करें';

  @override
  String get pleaseEnterOTPMessage => 'कृपया OTP दर्ज करें';

  @override
  String get registerButtonLabel => 'रजिस्टर करें';

  @override
  String get loginButtonLabel => 'लॉगिन करें';

  @override
  String get languageEnglish => 'अंग्रेजी';

  @override
  String get languageMalayalam => 'मलयालम';

  @override
  String get languageGujarati => 'गुजराती';

  @override
  String get languageMarathi => 'मराठी';

  @override
  String get languageHindi => 'हिंदी';

  @override
  String get languageBengali => 'बंगाली';

  @override
  String get languageTamil => 'तमिल';

  @override
  String get languageTelugu => 'तेलुगु';
}
