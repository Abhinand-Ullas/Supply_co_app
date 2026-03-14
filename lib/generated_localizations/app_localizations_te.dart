// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Telugu (`te`).
class AppLocalizationsTe extends AppLocalizations {
  AppLocalizationsTe([String locale = 'te']) : super(locale);

  @override
  String get appTitle => 'మైసప్లై కో';

  @override
  String get searchSupplycoOutlets => 'సరఫరా కో అవుట్‌లెట్‌లను వెతకండి';

  @override
  String get selectDistrict => 'జిల్లాలను ఎంచుకోండి';

  @override
  String get searchByNamePlaceCode => 'పేరు, స్థలం లేదా కోడ్‌ ద్వారా వెతకండి';

  @override
  String get searchButton => 'వెతకండి';

  @override
  String get searchResults => 'ఖోజ ఫలితాలు';

  @override
  String get lastVisited => 'చివరిసారి సందర్శించిన';

  @override
  String get viewStock => 'స్టాక్‌ను చూడండి';

  @override
  String get selectedOutlet => 'ఎంచుకోబడిన అవుట్‌లెట్';

  @override
  String get viewMore => 'మరిన్నీ చూడండి';

  @override
  String get noOutletsFound => 'ఎటువంటి అవుట్‌లెట్ కనుగొనబడలేదు.';

  @override
  String get allSupplycoOutlets => 'అన్ని సరఫరా కో అవుట్‌లెట్ లు';

  @override
  String district(Object district) {
    return '$district జిల్లా';
  }

  @override
  String outletFound(Object count) {
    return '$count అవుట్‌లెట్ లు కనుగొనబడ్డాయి';
  }

  @override
  String get sortedByDistance => 'దూరం ద్వారా క్రమబద్ధీకరించబడింది';

  @override
  String get sort => 'క్రమబద్ధీకరించండి >';

  @override
  String tapSearchToFind(Object district) {
    return 'ప్రభుత్వ అవుట్‌లెట్‌లను కనుగొనడానికి \'వెతకండి\' నొక్కండి $district లో మీ ప్రశ్నకు సరిపోతాయి.';
  }

  @override
  String get pleaseEnterOutlet =>
      'అవుట్‌లెట్ పేరు లేదా దుకాణ కోడ్ లేదా స్థలం నమోదు చేయండి\nసరఫరా కో అవుట్‌లెట్‌లను వెతకడానికి';

  @override
  String get continueAsGuest => 'అతిథిగా కొనసాగించండి';

  @override
  String get loginRegister => 'లాగిన్ / నమోదు చేయండి';

  @override
  String get profileSettings => 'ప్రొఫైల్ మరియు సెట్టింగ్‌లు';

  @override
  String get settings => 'సెట్టింగ్‌లు';

  @override
  String get setProfile => 'ప్రొఫైల్‌ను సెట్ చేయండి';

  @override
  String get manageAlerts => 'హెచ్చరికలను నిర్వహించండి';

  @override
  String get language => 'భాష';

  @override
  String get accessibility => 'సుగమతა';

  @override
  String get helpSupport => 'సహాయం మరియు సపోర్టు';

  @override
  String get termsConditions => 'నిబంధనలు మరియు షరతులు';

  @override
  String get privacyPolicy => 'గోపనీయతా విధానం';

  @override
  String get logout => 'లాగ్ అవుట్ చేయండి';

  @override
  String get selectYourLanguage => 'మీ భాషను ఎంచుకోండి';

  @override
  String get cancel => 'రద్దుచేయండి';

  @override
  String get confirm => 'నిర్ధారించండి';

  @override
  String get guest => 'అతిథి వినియోగదారు';

  @override
  String get allDistrictsLabel => 'అన్ని జిల్లాలు';

  @override
  String kmAway(Object distance) {
    return '$distance కిమీ దూరంలో';
  }

  @override
  String get locationInfo => '📍 ఆస్థాన సమాచారం';

  @override
  String get viewMoreOutlets => 'మరిన్ని అవుట్‌లెట్ లు చూడండి';

  @override
  String get loadingMoreOutlets =>
      '__ మరిన్నీ అవుట్‌లెట్ లు లోడ్ అవుతున్నాయి __';

  @override
  String get register => 'నమోదు చేయండి';

  @override
  String get login => 'లాగిన్ చేయండి';

  @override
  String get enterFullName => 'పూర్తి పేరు నమోదు చేయండి';

  @override
  String get enterMobileNumber => 'మొబైల్ నంబర్ నమోదు చేయండి';

  @override
  String get getOTP => 'OTP పొందండి';

  @override
  String get enterOTP => 'OTP నమోదు చేయండి';

  @override
  String get resendOTP => 'OTP మరలా పంపండి';

  @override
  String get continueWithGoogle => 'గూగుల్ తో కొనసాగించండి';

  @override
  String get or => 'లేదా';

  @override
  String get pleaseEnterNameAndNumber =>
      'దయచేసి మీ పేరు మరియు నంబర్ నమోదు చేయండి';

  @override
  String get pleaseEnterNameMessage => 'దయచేసి మీ పేరు నమోదు చేయండి';

  @override
  String get pleaseEnterMobileMessage => 'దయచేసి మొబైల్ నంబర్ నమోదు చేయండి';

  @override
  String get pleaseEnterValidMobileNumber =>
      'దయచెసి చెల్లుబాటు అయ్యే 10 అంకెల మొబైల్ నంబర్ నమోదు చేయండి';

  @override
  String get otpSentSuccessfully => 'OTP విజయవంతంగా పంపబడింది!';

  @override
  String get numberNotRegistered =>
      'నంబర్ నమోదు చేయబడలేదు. ముందుగా నమోదు చేయండి.';

  @override
  String get noAccountFound => 'ఖాతా కనుగొనబడలేదు. ముందుగా నమోదు చేయండి.';

  @override
  String get pleaseEnterNameBefore =>
      'కొనసాగించే ముందు దయచేసి మీ పేరు నమోదు చేయండి';

  @override
  String get pleaseEnterOTPMessage => 'దయచేసి OTP నమోదు చేయండి';

  @override
  String get registerButtonLabel => 'నమోదు చేయండి';

  @override
  String get loginButtonLabel => 'లాగిన్ చేయండి';

  @override
  String get languageEnglish => 'ఇంగ్లీష్';

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
