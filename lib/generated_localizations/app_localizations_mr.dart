// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Marathi (`mr`).
class AppLocalizationsMr extends AppLocalizations {
  AppLocalizationsMr([String locale = 'mr']) : super(locale);

  @override
  String get appTitle => 'माईसप्लाय को';

  @override
  String get searchSupplycoOutlets => 'सप्लाय को आउटलेट शोधा';

  @override
  String get selectDistrict => 'जिल्हा निवडा';

  @override
  String get searchByNamePlaceCode => 'नाव, स्थान किंवा कोडद्वारे शोधा';

  @override
  String get searchButton => 'शोधा';

  @override
  String get searchResults => 'शोध परिणाम';

  @override
  String get lastVisited => 'शेवटची भेट';

  @override
  String get viewStock => 'स्टॉक पहा';

  @override
  String get selectedOutlet => 'निवडलेला आउटलेट';

  @override
  String get viewMore => 'आणखी पहा';

  @override
  String get noOutletsFound => 'कोणतेही आउटलेट सापडले नाहीत.';

  @override
  String get allSupplycoOutlets => 'सर्व सप्लाय को आउटलेट';

  @override
  String district(Object district) {
    return '$district जिल्हा';
  }

  @override
  String outletFound(Object count) {
    return '$count आउटलेट सापडले';
  }

  @override
  String get sortedByDistance => 'अंतरानुसार क्रमवारीत';

  @override
  String get sort => 'क्रमवारीत करा >';

  @override
  String tapSearchToFind(Object district) {
    return 'सरकारी आउटलेट शोधण्यासाठी \'शोधा\' वर टॅप करा जे $district मध्ये आपल्या क्वेरीशी जुळतात.';
  }

  @override
  String get pleaseEnterOutlet =>
      'आउटलेटचे नाव किंवा दुकानाचा कोड किंवा स्थान प्रविष्ट करा\nसप्लाय को आउटलेट शोधण्यासाठी';

  @override
  String get continueAsGuest => 'अतिथी म्हणून सुरू ठेवा';

  @override
  String get loginRegister => 'लॉगिन / नोंदणी करा';

  @override
  String get profileSettings => 'प्रोफाईल आणि सेटिंग्ज';

  @override
  String get settings => 'सेटिंग्ज';

  @override
  String get setProfile => 'प्रोफाईल सेट करा';

  @override
  String get manageAlerts => 'सतर्कता व्यवस्थापित करा';

  @override
  String get language => 'भाषा';

  @override
  String get accessibility => 'प्रवेशयोग्यता';

  @override
  String get helpSupport => 'मदत आणि समर्थन';

  @override
  String get termsConditions => 'अटी आणि शर्ती';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get logout => 'लॉग आउट करा';

  @override
  String get selectYourLanguage => 'आपली भाषा निवडा';

  @override
  String get cancel => 'रद्द करा';

  @override
  String get confirm => 'पुष्टि करा';

  @override
  String get guest => 'अतिथी वापरकर्ता';

  @override
  String get allDistrictsLabel => 'सर्व जिल्हे';

  @override
  String kmAway(Object distance) {
    return '$distance किमी दूर';
  }

  @override
  String get locationInfo => '📍 स्थान माहिती';

  @override
  String get viewMoreOutlets => 'अधिक आउटलेट पहा';

  @override
  String get loadingMoreOutlets => '__ अधिक आउटलेट लोड होत आहे __';

  @override
  String get register => 'नोंदणी करऺ';

  @override
  String get login => 'लॉगिन करा';

  @override
  String get enterFullName => 'पूर्ण नाव प्रविष्ट करऺ';

  @override
  String get enterMobileNumber => 'मोबाइल नंबर प्रविष्ट करि';

  @override
  String get getOTP => 'OTP मिळवा';

  @override
  String get enterOTP => 'OTP प्रविष्ट करा';

  @override
  String get resendOTP => 'OTP पुन्हा पाठवा';

  @override
  String get continueWithGoogle => 'गूगल सह सुरू ठेवा';

  @override
  String get or => 'किंवा';

  @override
  String get pleaseEnterNameAndNumber => 'कृपया आपले नाव आणि नंबर प्रविष्ट करि';

  @override
  String get pleaseEnterNameMessage => 'कृपया आपले नाव प्रविष्ट करा';

  @override
  String get pleaseEnterMobileMessage => 'कृपया मोबाइल नंबर प्रविष्ट करऺ';

  @override
  String get pleaseEnterValidMobileNumber =>
      'कृपया वैध 10-अंकीय मोबाइल नंबर प्रविष्ट करऺ';

  @override
  String get otpSentSuccessfully => 'OTP यशस्वीरित्या पाठवला गेला!';

  @override
  String get numberNotRegistered =>
      'नंबर नोंदणीकृत नाही. कृपया प्रथम नोंदणी करऺ';

  @override
  String get noAccountFound => 'खाते सापडले नाही. कृपया प्रथम नोंदणी करा.';

  @override
  String get pleaseEnterNameBefore =>
      'सुरु ठेवण्यापूर्वी कृपया आपले नाव प्रविष्ट करऺ';

  @override
  String get pleaseEnterOTPMessage => 'कृपया OTP प्रविष्ट करा';

  @override
  String get registerButtonLabel => 'नोंदणी करऺ';

  @override
  String get loginButtonLabel => 'लॉगिन करा';

  @override
  String get languageEnglish => 'इंग्रजी';

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
