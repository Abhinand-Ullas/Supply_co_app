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

  @override
  String get frequentlyAskedQuestions => 'अक्सर पूछे जाने वाले प्रश्न';

  @override
  String get needMoreHelp => 'अधिक मदद चाहिए?';

  @override
  String get emailSupport => 'ईमेल समर्थन';

  @override
  String get phoneSupport => 'फोन समर्थन';

  @override
  String get governmentPortal => 'सरकारी पोर्टल';

  @override
  String get supportEmail => 'support@mysupplyco.gov.in';

  @override
  String get supportPhone => '+91-1800-SUPPLY-GO';

  @override
  String get supportWebsite => 'www.mysupplyco.gov.in';

  @override
  String get faqQ1 => 'मैं खाता कैसे बनाऊं?';

  @override
  String get faqA1 =>
      'mySupplyCO ऐप डाउनलोड करें और \"साइन अप\" पर टैप करें। अपना नाम, ईमेल और मोबाइल नंबर दर्ज करें। आपको एक सत्यापन कोड प्राप्त होगा। इसे दर्ज करके पंजीकरण पूरा करें।';

  @override
  String get faqQ2 => 'मैं स्टॉक की उपलब्धता कैसे जांचूं?';

  @override
  String get faqA2 =>
      'लॉगिन करने के बाद, \"स्टॉक\" टैब पर टैप करें। आप अपने नियुक्त आपूर्ति केंद्र से वास्तविक समय के इन्वेंटरी को देख सकते हैं। विशिष्ट आइटम खोजने के लिए खोज बार का उपयोग करें।';

  @override
  String get faqQ3 => 'आदेश कौन दे सकता है?';

  @override
  String get faqA3 =>
      'mySupplyCO के साथ पंजीकृत सरकारी अधिकृत अधिकारी आदेश दे सकते हैं। आपका प्रवेश स्तर आपके सरकारी संगठन और भूमिका पर निर्भर करता है।';

  @override
  String get faqQ4 => 'मुझे सूचनाएं कैसे प्राप्त होती हैं?';

  @override
  String get faqA4 =>
      'सेटिंग्स → सतर्कताएं प्रबंधित करें पर जाएं स्टॉक अपडेट, ऑर्डर स्थिति और सिस्टम घोषणाओं के लिए सूचनाएं सक्षम/अक्षम करने के लिए।';

  @override
  String get faqQ5 => 'क्या ऑफलाइन मोड है?';

  @override
  String get faqA5 =>
      'हां! ऐप स्वचालित रूप से हाल के स्टॉक डेटा को कैश करता है। आप इंटरनेट कनेक्शन के बिना भी पहले से लोड किए गए स्टॉक जानकारी को देख सकते हैं।';

  @override
  String get faqQ6 => 'मैं अपना पासवर्ड कैसे रीसेट करूं?';

  @override
  String get faqA6 =>
      'लॉगिन पेज पर, \"पासवर्ड भूल गए?\" पर टैप करें और अपना पंजीकृत ईमेल दर्ज करें। आपको ईमेल के माध्यम से एक रीसेट लिंक मिलेगा। नया पासवर्ड बनाने के निर्देशों का पालन करें।';

  @override
  String get governmentSupplyManagementSystem =>
      'सरकारी आपूर्ति प्रबंधन प्रणाली';

  @override
  String get pleaseReadTermsCarefully =>
      'mySupplyCO एप्लिकेशन का उपयोग करने से पहले कृपया इन शर्तों और शर्तों को ध्यान से पढ़ें। इस एप्लिकेशन तक आपकी पहुंच और उपयोग इन शर्तों की स्वीकृति और अनुपालन पर निर्भर है।';

  @override
  String get userAgreement => 'उपयोगकर्ता समझौता';

  @override
  String get userAgreementContent =>
      'mySupplyCO एप्लिकेशन तक पहुंचने और उपयोग करने से, आप इन शर्तों और शर्तों से बंधे होने के लिए सहमत हैं। यह एप्लिकेशन अधिकृत सरकारी अधिकारियों और संगठनों के लिए आपूर्ति श्रृंखला प्रबंधन को सुविधाजनक बनाने के लिए डिज़ाइन किया गया है।';

  @override
  String get eligibility => 'पात्रता';

  @override
  String get eligibilityContent =>
      'इस एप्लिकेशन का उपयोग करने के लिए आप एक अधिकृत सरकारी अधिकारी या सरकारी संगठन के प्रतिनिधि होने चाहिए। आप पंजीकरण के दौरान सटीक और संपूर्ण जानकारी प्रदान करने और अपने लॉगिन क्रेडेंशियल की गोपनीयता बनाए रखने के लिए सहमत हैं।';

  @override
  String get acceptableUse => 'स्वीकार्य उपयोग';

  @override
  String get acceptableUseContent =>
      'आप इसके लिए सहमत नहीं हैं: (ए) अनधिकृत उद्देश्यों के लिए एप्लिकेशन का उपयोग, (बी) सिस्टम तक अनधिकृत पहुंच प्राप्त करने का प्रयास, (सी) अपने खाते क्रेडेंशियल को अनधिकृत व्यक्तियों के साथ साझा करना, (डी) एप्लिकेशन के माध्यम से कोई भी अवैध गतिविधि करना, या (ई) किसी भी लागू कानून या नियमों का उल्लंघन करना।';

  @override
  String get userResponsibilities => 'उपयोगकर्ता जिम्मेदारियां';

  @override
  String get userResponsibilitiesContent =>
      'आप पूरी तरह से जिम्मेदार हैं: (ए) अपने खाते की सुरक्षा बनाए रखना, (बी) आपके खाते का उपयोग करके की जाने वाली सभी गतिविधियां, (सी) अपनी सरकार की नीतियों के अनुपालन को सुनिश्चित करना, और (डी) लेनदेन और आदेशों के दौरान सटीक जानकारी प्रदान करना।';

  @override
  String get intellectualProperty => 'बौद्धिक संपत्ति';

  @override
  String get intellectualPropertyContent =>
      'mySupplyCO एप्लिकेशन की सभी सामग्री, विशेषताएं और कार्यक्षमता सरकारी एजेंसी के स्वामित्व में हैं, कॉपीराइट और अन्य बौद्धिक संपत्ति कानूनों द्वारा संरक्षित हैं। आप पूर्व लिखित सहमति के बिना किसी भी सामग्री को पुनः प्रकाशित, वितरित या प्रसारित नहीं कर सकते।';

  @override
  String get limitationOfLiability => 'दायित्व की सीमा';

  @override
  String get limitationOfLiabilityContent =>
      'mySupplyCO एप्लिकेशन \"जैसा है\" के आधार पर प्रदान किया जाता है। हम यह वारंटी नहीं देते कि सेवा निर्बाध या त्रुटि-मुक्त होगी। कानून द्वारा अनुमत अधिकतम सीमा तक, हम आपके एप्लिकेशन के उपयोग से उत्पन्न किसी भी अप्रत्यक्ष, आकस्मिक, विशेष, या परिणामी नुकसान के लिए जिम्मेदार नहीं हैं।';

  @override
  String get dataAndInformation => 'डेटा और जानकारी';

  @override
  String get dataAndInformationContent =>
      'सभी स्टॉक डेटा, आदेश और लेनदेन रिकॉर्ड सरकारी एजेंसी की संपत्ति हैं। आप इस जानकारी को सरकारी कार्यों के अलावा अन्य उद्देश्यों के लिए कॉपी, वितरित या उपयोग नहीं करने के लिए सहमत हैं। हम अपनी गोपनीयता नीति देखें कि हम व्यक्तिगत डेटा को कैसे संभालते हैं।';

  @override
  String get accountTermination => 'खाता समाप्ति';

  @override
  String get accountTerminationContent =>
      'यदि आप इन शर्तों का उल्लंघन करते हैं, अनधिकृत उपयोग में संलग्न हैं, या सरकारी नियमों का पालन करने में विफल रहते हैं तो हम आपके खाते को निलंबित या समाप्त करने का अधिकार सुरक्षित रखते हैं। समाप्ति तत्काल और बिना किसी और सूचना के हो सकती है।';

  @override
  String get modificationsToTerms => 'शर्तों में संशोधन';

  @override
  String get modificationsToTermsContent =>
      'हम किसी भी समय इन शर्तों और शर्तों को संशोधित कर सकते हैं। परिवर्तन पोस्टिंग के तुरंत बाद प्रभावी होंगे। किसी भी संशोधन के बाद एप्लिकेशन का निरंतर उपयोग अपडेट की गई शर्तों की स्वीकृति का मतलब है।';

  @override
  String get governingLaw => 'प्रशासनिक कानून';

  @override
  String get governingLawContent =>
      'ये शर्तें और शर्तें भारत के कानूनों द्वारा संचालित और निर्मित हैं। कोई भी कानूनी कार्रवाई या कार्यवाही उपयुक्त अदालतों के अधिकार क्षेत्र के अधीन होगी।';

  @override
  String get lastUpdatedTerms =>
      '⚠ अंतिम अपडेट: मार्च 2026। ये शर्तें और शर्तें mySupplyCO एप्लिकेशन के सभी उपयोगकर्ताओं पर लागू होती हैं। इस एप्लिकेशन का उपयोग करके, आप स्वीकार करते हैं कि आपने इन शर्तों को पढ़ा है, समझा है और उनसे बंधे होने के लिए सहमत हैं।';

  @override
  String get yourPrivacyIsProtected => 'आपकी गोपनीयता सुरक्षित है';

  @override
  String get privacyDescription =>
      'हम केवल 3 जानकारी एकत्र करते हैं: आपका नाम, ईमेल और मोबाइल नंबर। हम कभी भी आपके डेटा को साझा, बेचेंगे या दुरुपयोग नहीं करेंगे। आपकी जानकारी केवल सरकारी आपूर्ति श्रृंखला संचालन के लिए उपयोग की जाती है।';

  @override
  String get dataCollection => 'डेटा संग्रह';

  @override
  String get dataCollectionContent =>
      'mySupplyCO पंजीकरण और उपयोग के दौरान आपसे केवल निम्नलिखित व्यक्तिगत जानकारी एकत्र और संग्रहीत करता है:';

  @override
  String get fullName => 'आपका पूरा नाम';

  @override
  String get emailAddress => 'आपका ईमेल पता';

  @override
  String get mobileNumber => 'आपका मोबाइल नंबर';

  @override
  String get dataUsage => 'डेटा उपयोग';

  @override
  String get dataUsageContent =>
      'आपका व्यक्तिगत डेटा विशेष रूप से निम्नलिखित के लिए उपयोग किया जाता है:';

  @override
  String get accountAuthentication => 'खाता प्रमाणीकरण और लॉगिन';

  @override
  String get orderConfirmations => 'ऑर्डर पुष्टिकरण और अपडेट भेजना';

  @override
  String get customerSupport => 'ग्राहक समर्थन प्रदान करना';

  @override
  String get stockNotifications =>
      'स्टॉक परिवर्तन और सिस्टम सतर्कताओं के बारे में आपको सूचित करना';

  @override
  String get governmentFunctions =>
      'सरकारी आपूर्ति श्रृंखला प्रबंधन कार्यों को पूरा करना';

  @override
  String get whatWeDoNotDo => 'हम क्या नहीं करते';

  @override
  String get doNotSellData =>
      'हम आपके व्यक्तिगत डेटा को नहीं बेचते, साझा करते या व्यापार करते हैं';

  @override
  String get doNotMarketData =>
      'हम आपके डेटा का विपणन या विज्ञापन के लिए उपयोग नहीं करते हैं';

  @override
  String get doNotShareThirdParty =>
      'हम आपके डेटा को तीसरे पक्ष की कंपनियों के साथ साझा नहीं करते हैं';

  @override
  String get doNotUseOutsideGov =>
      'हम आपके डेटा को सरकारी आपूर्ति कार्यों के बाहर उद्देश्यों के लिए उपयोग नहीं करते हैं';

  @override
  String get doNotCombineData =>
      'हम आपके डेटा को बाहरी स्रोतों के साथ संयोजित नहीं करते हैं';

  @override
  String get dataSecurity => 'डेटा सुरक्षा';

  @override
  String get dataSecurityContent =>
      'हम आपकी व्यक्तिगत जानकारी की सुरक्षा के लिए उद्योग-मानक सुरक्षा उपाय लागू करते हैं:';

  @override
  String get encryptedTransmission => 'एन्क्रिप्टेड डेटा प्रसारण (SSL/TLS)';

  @override
  String get secureServers => 'सुरक्षित सर्वर बुनियादी ढांचा';

  @override
  String get limitedAccess =>
      'व्यक्तिगत डेटा तक सीमित पहुंच (केवल अधिकृत कर्मचारी)';

  @override
  String get securityAudits => 'नियमित सुरक्षा ऑडिट और अपडेट';

  @override
  String get governmentCompliance => 'सरकारी डेटा सुरक्षा मानकों का अनुपालन';

  @override
  String get yourRights => 'आपके अधिकार';

  @override
  String get yourRightsContent => 'आपके पास निम्नलिखित के अधिकार हैं:';

  @override
  String get accessData => 'किसी भी समय अपना व्यक्तिगत डेटा एक्सेस करें';

  @override
  String get correctData => 'गलत जानकारी को ठीक करने का अनुरोध करें';

  @override
  String get deleteAccount => 'अपने खाते और डेटा को हटाने का अनुरोध करें';

  @override
  String get obtainCopy => 'अपनी व्यक्तिगत जानकारी की एक प्रति प्राप्त करें';

  @override
  String get withdrawConsent => 'डेटा उपयोग के लिए सहमति वापस लें';

  @override
  String get dataRetention => 'डेटा प्रतिधारण';

  @override
  String get dataRetentionContent =>
      'आपका व्यक्तिगत डेटा केवल सरकारी आपूर्ति प्रबंधन कार्यों के लिए आवश्यक समय के लिए ही रखा जाता है। खाते को हटाए जाने पर, आपका डेटा 30 दिनों के भीतर हमारे सिस्टम से स्थायी रूप से हटा दिया जाएगा, सिवाय जहां कानून द्वारा आवश्यक हो।';

  @override
  String get changesToPrivacyPolicy => 'गोपनीयता नीति में परिवर्तन';

  @override
  String get changesToPrivacyPolicyContent =>
      'हम समय-समय पर इस गोपनीयता नीति को अपडेट कर सकते हैं। हम ईमेल या एप्लिकेशन के माध्यम से किसी भी महत्वपूर्ण परिवर्तन की जानकारी दंगे। mySupplyCO का निरंतर उपयोग अपडेट की गई नीति की स्वीकृति का मतलब है।';

  @override
  String get contactUsPrivacy => 'हमसे संपर्क करें';

  @override
  String get contactUsPrivacyContent =>
      'यदि आपके पास इस गोपनीयता नीति या आपकी व्यक्तिगत डेटा के बारे में कोई प्रश्न हैं, तो कृपया हमसे संपर्क करें:';

  @override
  String get privacyEmail => 'ईमेल: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'फोन: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'पोर्टल: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 अंतिम अपडेट: मार्च 2026। यह गोपनीयता नीति mySupplyCO सेवा की शर्तों का हिस्सा है। इस एप्लिकेशन का उपयोग करके, आप यहां रूपरेखित की गई हमारी गोपनीयता प्रथाओं के लिए सहमति देते हैं।';

  @override
  String get privacyPolicyPageTitle => 'गोपनीयता नीति';

  @override
  String get termsConditionsPageTitle => 'शर्तें और शर्तें';

  @override
  String get helpSupportPageTitle => 'सहायता और समर्थन';

  @override
  String get helpFaqCreateAccount => 'मैं खाता कैसे बनाऊं?';

  @override
  String get helpFaqCreateAccountAns =>
      'MySupplyCo ऐप डाउनलोड करें और \"रजिस्टर\" पर टैप करें। अपना नाम दर्ज करें, आप या तो अपने गूगल खाते का उपयोग कर सकते हैं या मोबाइल नंबर से लॉगिन कर सकते हैं। यदि आप मोबाइल नंबर का उपयोग कर रहे हैं, तो OTP सत्यापन आवश्यक है।';

  @override
  String get helpFaqCheckStock => 'मैं स्टॉक की उपलब्धता कैसे जांचूं?';

  @override
  String get helpFaqCheckStockAns =>
      'लॉगिन करने के बाद, \"स्टॉक\" टैब पर टैप करें। आप अपने नियुक्त आपूर्ति केंद्र से वास्तविक समय के इन्वेंटरी को देख सकते हैं। विशिष्ट आइटम खोजने के लिए खोज बार का उपयोग करें।';

  @override
  String get helpFaqNotifications => 'मुझे सूचनाएं कैसे प्राप्त होती हैं?';

  @override
  String get helpFaqNotificationsAns =>
      'सेटिंग्स → सतर्कताएं प्रबंधित करें पर जाएं स्टॉक अपडेट और सिस्टम घोषणाओं के लिए सूचनाएं सक्षम/अक्षम करने के लिए। पुश नोटिफिकेशन के लिए ऐप की अनुमति की आवश्यकता है।';

  @override
  String get helpFaqOfflineMode => 'क्या ऑफलाइन मोड है?';

  @override
  String get helpFaqOfflineModeAns =>
      'हां! ऐप स्वचालित रूप से हाल के स्टॉक डेटा को कैश करता है। आप इंटरनेट कनेक्शन के बिना भी पहले से लोड किए गए स्टॉक जानकारी को देख सकते हैं।';

  @override
  String get governmentPortalText => 'सरकारी पोर्टल';

  @override
  String get privacyDataCollection => 'डेटा संग्रह';

  @override
  String get privacyDataCollectionContent =>
      'MySupplyCo पंजीकरण और उपयोग के दौरान आपसे केवल निम्नलिखित व्यक्तिगत जानकारी एकत्र और संग्रहीत करता है:';

  @override
  String get privacyFullName => 'आपका पूरा नाम';

  @override
  String get privacyEmailAddress => 'आपका ईमेल पता';

  @override
  String get privacyMobileNumber => 'आपका मोबाइल नंबर';

  @override
  String get privacyDataUsage => 'डेटा उपयोग';

  @override
  String get privacyDataUsageContent =>
      'आपका व्यक्तिगत डेटा विशेष रूप से निम्न के लिए उपयोग किया जाता है:';

  @override
  String get privacyAccountAuthentication => 'खाता प्रमाणीकरण और लॉगिन';

  @override
  String get privacyCustomerSupport => 'ग्राहक समर्थन प्रदान करना';

  @override
  String get privacyStockNotifications =>
      'स्टॉक परिवर्तन और सिस्टम सतर्कताओं के बारे में आपको सूचित करना';

  @override
  String get privacyWhatWeDoNotDo => 'हम क्या नहीं करते';

  @override
  String get privacyDoNotSell =>
      'हम आपके व्यक्तिगत डेटा को नहीं बेचते, साझा करते या व्यापार करते हैं';

  @override
  String get privacyDoNotMarket =>
      'हम आपके डेटा का विपणन या विज्ञापन के लिए उपयोग नहीं करते हैं';

  @override
  String get privacyDoNotShareThirdParty =>
      'हम आपके डेटा को तीसरे पक्ष की कंपनियों के साथ साझा नहीं करते हैं';

  @override
  String get privacyDoNotUseOutsideGov =>
      'हम आपके डेटा को सरकारी आपूर्ति कार्यों के बाहर उद्देश्यों के लिए उपयोग नहीं करते हैं';

  @override
  String get privacyDoNotCombineData =>
      'हम आपके डेटा को बाहरी स्रोतों के साथ संयोजित नहीं करते हैं';

  @override
  String get privacyDataSecurity => 'डेटा सुरक्षा';

  @override
  String get privacyDataSecurityContent =>
      'हम आपकी व्यक्तिगत जानकारी की सुरक्षा के लिए उद्योग-मानक सुरक्षा उपाय लागू करते हैं:';

  @override
  String get privacySecureServers => 'सुरक्षित सर्वर बुनियादी ढांचा';

  @override
  String get privacyLimitedAccess =>
      'व्यक्तिगत डेटा तक सीमित पहुंच (केवल अधिकृत कर्मचारी)';

  @override
  String get privacySecurityAudits => 'नियमित सुरक्षा ऑडिट और अपडेट';

  @override
  String get privacyGovernmentCompliance =>
      'सरकारी डेटा सुरक्षा मानकों का अनुपालन';

  @override
  String get privacyYourRights => 'आपके अधिकार';

  @override
  String get privacyYourRightsContent => 'आपके पास निम्नलिखित के अधिकार हैं:';

  @override
  String get privacyAccessData => 'किसी भी समय अपना व्यक्तिगत डेटा एक्सेस करें';

  @override
  String get privacyCorrectData => 'गलत जानकारी को ठीक करने का अनुरोध करें';

  @override
  String get privacyDeleteAccount =>
      'अपने खाते और डेटा को हटाने का अनुरोध करें';

  @override
  String get privacyWithdrawConsent => 'डेटा उपयोग के लिए सहमति वापस लें';

  @override
  String get privacyDataRetention => 'डेटा प्रतिधारण';

  @override
  String get privacyDataRetentionContent =>
      'आपका व्यक्तिगत डेटा केवल सरकारी आपूर्ति प्रबंधन कार्यों के लिए आवश्यक समय के लिए ही रखा जाता है। खाते को हटाए जाने पर, आपका डेटा 30 दिनों के भीतर हमारे सिस्टम से स्थायी रूप से हटा दिया जाएगा, सिवाय जहां कानून द्वारा आवश्यक हो।';

  @override
  String get privacyChangesToPolicy => 'गोपनीयता नीति में परिवर्तन';

  @override
  String get privacyChangesToPolicyContent =>
      'हम समय-समय पर इस गोपनीयता नीति को अपडेट कर सकते हैं। हम ईमेल या एप्लिकेशन के माध्यम से किसी भी महत्वपूर्ण परिवर्तन की जानकारी दंगे। mySupplyCO का निरंतर उपयोग अपडेट की गई नीति की स्वीकृति का मतलब है।';

  @override
  String get privacyProtectedTitle => 'आपकी गोपनीयता सुरक्षित है';

  @override
  String get privacyProtectedDescription =>
      'हम केवल 3 जानकारी एकत्र करते हैं: आपका नाम, ईमेल और मोबाइल नंबर। हम कभी भी आपके डेटा को साझा, बेचेंगे या दुरुपयोग नहीं करेंगे। आपकी जानकारी केवल सरकारी आपूर्ति श्रृंखला संचालन के लिए उपयोग की जाती है।';

  @override
  String get privacyFooterNote =>
      '📋 अंतिम अपडेट: मार्च 2026। यह गोपनीयता नीति mySupplyCO सेवा की शर्तों का हिस्सा है। इस एप्लिकेशन का उपयोग करके, आप यहां रूपरेखित की गई हमारी गोपनीयता प्रथाओं के लिए सहमति देते हैं।';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'सरकारी आपूर्ति प्रबंधन प्रणाली';

  @override
  String get termsIntroContent =>
      'mySupplyCO एप्लिकेशन का उपयोग करने से पहले कृपया इन शर्तों और शर्तों को ध्यान से पढ़ें। इस एप्लिकेशन तक आपकी पहुंच और उपयोग इन शर्तों की स्वीकृति और अनुपालन पर निर्भर है।';

  @override
  String get termsUserAgreement => 'उपयोगकर्ता समझौता';

  @override
  String get termsUserAgreementContent =>
      'mySupplyCO एप्लिकेशन तक पहुंचने और उपयोग करने से, आप इन शर्तों और शर्तों से बंधे होने के लिए सहमत हैं। यह एप्लिकेशन अधिकृत सरकारी अधिकारियों और संगठनों के लिए आपूर्ति श्रृंखला प्रबंधन को सुविधाजनक बनाने के लिए डिज़ाइन किया गया है।';

  @override
  String get termsEligibility => 'पात्रता';

  @override
  String get termsEligibilityContent =>
      'इस एप्लिकेशन का उपयोग करने के लिए आप एक अधिकृत सरकारी अधिकारी या सरकारी संगठन के प्रतिनिधि होने चाहिए। आप पंजीकरण के दौरान सटीक और संपूर्ण जानकारी प्रदान करने और अपने लॉगिन क्रेडेंशियल की गोपनीयता बनाए रखने के लिए सहमत हैं।';

  @override
  String get termsAcceptableUse => 'स्वीकार्य उपयोग';

  @override
  String get termsAcceptableUseContent =>
      'आप इसके लिए सहमत नहीं हैं: (ए) अनधिकृत उद्देश्यों के लिए एप्लिकेशन का उपयोग, (बी) सिस्टम तक अनधिकृत पहुंच प्राप्त करने का प्रयास, (सी) अपने खाते क्रेडेंशियल को अनधिकृत व्यक्तियों के साथ साझा करना, (डी) एप्लिकेशन के माध्यम से कोई भी अवैध गतिविधि करना, या (ई) किसी भी लागू कानून या नियमों का उल्लंघन करना।';

  @override
  String get termsUserResponsibilities => 'उपयोगकर्ता जिम्मेदारियां';

  @override
  String get termsUserResponsibilitiesContent =>
      'आप पूरी तरह से जिम्मेदार हैं: (ए) अपने खाते की सुरक्षा बनाए रखना, (बी) आपके खाते का उपयोग करके की जाने वाली सभी गतिविधियां, (सी) अपनी सरकार की नीतियों के अनुपालन को सुनिश्चित करना, और (डी) लेनदेन और आदेशों के दौरान सटीक जानकारी प्रदान करना।';

  @override
  String get termsIntellectualProperty => 'बौद्धिक संपत्ति';

  @override
  String get termsIntellectualPropertyContent =>
      'mySupplyCO एप्लिकेशन की सभी सामग्री, विशेषताएं और कार्यक्षमता सरकारी एजेंसी के स्वामित्व में हैं, कॉपीराइट और अन्य बौद्धिक संपत्ति कानूनों द्वारा संरक्षित हैं। आप पूर्व लिखित सहमति के बिना किसी भी सामग्री को पुनः प्रकाशित, वितरित या प्रसारित नहीं कर सकते।';

  @override
  String get termsLimitationOfLiability => 'दायित्व की सीमा';

  @override
  String get termsLimitationOfLiabilityContent =>
      'mySupplyCO एप्लिकेशन \\\"जैसा है\\\" के आधार पर प्रदान किया जाता है। हम यह वारंटी नहीं देते कि सेवा निर्बाध या त्रुटि-मुक्त होगी। कानून द्वारा अनुमत अधिकतम सीमा तक, हम आपके एप्लिकेशन के उपयोग से उत्पन्न किसी भी अप्रत्यक्ष, आकस्मिक, विशेष, या परिणामी नुकसान के लिए जिम्मेदार नहीं हैं।';

  @override
  String get termsDataAndInformation => 'डेटा और जानकारी';

  @override
  String get termsDataAndInformationContent =>
      'सभी स्टॉक डेटा, आदेश और लेनदेन रिकॉर्ड सरकारी एजेंसी की संपत्ति हैं। आप इस जानकारी को सरकारी कार्यों के अलावा अन्य उद्देश्यों के लिए कॉपी, वितरित या उपयोग नहीं करने के लिए सहमत हैं। हम अपनी गोपनीयता नीति देखें कि हम व्यक्तिगत डेटा को कैसे संभालते हैं।';

  @override
  String get termsAccountTermination => 'खाता समाप्ति';

  @override
  String get termsAccountTerminationContent =>
      'यदि आप इन शर्तों का उल्लंघन करते हैं, अनधिकृत उपयोग में संलग्न हैं, या सरकारी नियमों का पालन करने में विफल रहते हैं तो हम आपके खाते को निलंबित या समाप्त करने का अधिकार सुरक्षित रखते हैं। समाप्ति तक्षणिक और बिना किसी और सूचना के हो सकती है।';

  @override
  String get termsModificationsToTerms => 'शर्तों में संशोधन';

  @override
  String get termsModificationsToTermsContent =>
      'हम किसी भी समय इन शर्तों और शर्तों को संशोधित कर सकते हैं। परिवर्तन पोस्टिंग के तुरंत बाद प्रभावी होंगे। किसी भी संशोधन के बाद एप्लिकेशन का निरंतर उपयोग अपडेट की गई शर्तों की स्वीकृति का मतलब है।';

  @override
  String get termsGoverningLaw => 'प्रशासनिक कानून';

  @override
  String get termsGoverningLawContent =>
      'ये शर्तें और शर्तें भारत के कानूनों द्वारा संचालित और निर्मित हैं। कोई भी कानूनी कार्रवाई या कार्यवाही उपयुक्त अदालतों के अधिकार क्षेत्र के अधीन होगी।';

  @override
  String get termsFooterNote =>
      '⚠ अंतिम अपडेट: मार्च 2026। ये शर्तें और शर्तें mySupplyCO एप्लिकेशन के सभी उपयोगकर्ताओं पर लागू होती हैं। इस एप्लिकेशन का उपयोग करके, आप स्वीकार करते हैं कि आपने इन शर्तों को पढ़ा है, समझा है और उनसे बंधे होने के लिए सहमत हैं।';
}
