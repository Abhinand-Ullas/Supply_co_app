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

  @override
  String get frequentlyAskedQuestions => 'वारंवार विचारलेले प्रश्न';

  @override
  String get needMoreHelp => 'अधिक मदद हवी आहे?';

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
  String get faqQ1 => 'मी खाते कसे तयार करू?';

  @override
  String get faqA1 =>
      'mySupplyCO अॅप डाउनलोड करा आणि \"साइन अप\" टॅप करा. तुमचे नाव, ईमेल आणि मोबाइल नंबर प्रविष्ट करा. तुम्हाला एक सत्यापन कोड मिळेल. ते प्रविष्ट करून नोंदणी पूर्ण करा.';

  @override
  String get faqQ2 => 'मी स्टॉक उपलब्धता कसे तपासू?';

  @override
  String get faqA2 =>
      'लॉगिन केल्यानंतर, \"स्टॉक\" टॅब टॅप करा. तुम्ही तुमच्या नियुक्त पुरवठा केंद्रातून रিअल-टाइम यादी पाहू शकता. विशिष्ट वस्तू शोधण्यासाठी शोध पट्टी वापरा.';

  @override
  String get faqQ3 => 'ऑर्डर कोण दिला शकतो?';

  @override
  String get faqA3 =>
      'mySupplyCO सह नोंदणी केलेले सरकारी अधिकृत अधिकारी ऑर्डर दिला शकतात. तुमचा प्रवेश स्तर तुमच्या सरकारी संस्थ आणि भूमिकेवर अवलंबून असतो.';

  @override
  String get faqQ4 => 'मला सूचना कसे मिळतात?';

  @override
  String get faqA4 =>
      'सेटिंग्ज → सतर्कता व्यवस्थापित करा मध्ये जा. स्टॉक अपडेट, ऑर्डर स्थिती आणि सिस्टम घोषणांसाठी सूचना सक्षम/अक्षम करा.';

  @override
  String get faqQ5 => 'ऑफलाइन मोड आहे का?';

  @override
  String get faqA5 =>
      'होय! अॅप स्वयंचलितपणे अलीकडील स्टॉक डेटा कॅश करते. तुम्ही इंटरनेट कनेक्शन व्यतिरिक्त पूर्वकल्पित लोड स्टॉक माहिती पाहू शकता.';

  @override
  String get faqQ6 => 'मी माझा पासवर्ड कसे रीसेट करू?';

  @override
  String get faqA6 =>
      'लॉगिन पृष्ठावर, \"पासवर्ड विसरलात?\" टॅप करा आणि तुमचा नोंदणी केलेले ईमेल प्रविष्ट करा. तुम्हाला ईमेलद्वारे रीसेट लिंक मिळेल. नवीन पासवर्ड तयार करण्यासाठी सूचना अनुसरा.';

  @override
  String get governmentSupplyManagementSystem =>
      'सरकारी पुरवठा व्यवस्थापन प्रणाली';

  @override
  String get pleaseReadTermsCarefully =>
      'mySupplyCO अॅपलिकेशन वापरण्यापूर्वी कृपया ही अट सावधानीपूर्वक वाचा. या अॅपलिकेशनचा तुमचा प्रवेश आणि वापर या अटींच्या स्वीकृती आणि पालनावर अवलंबून असतो.';

  @override
  String get userAgreement => 'वापरकर्ता करार';

  @override
  String get userAgreementContent =>
      'mySupplyCO अॅपलिकेशनला प्रवेश आणि वापर केल्याने, तुम्ही या अटींद्वारे बद्ध हોण्यास सहमत आहात. हे अॅपलिकेशन अधिकृत सरकारी अधिकाऱ्यांना आणि संस्थांना पुरवठा साखळी व्यवस्थापन सुविधा प्रदान करण्यासाठी डिজाइन केलेले आहे.';

  @override
  String get eligibility => 'पात्रता';

  @override
  String get eligibilityContent =>
      'या अॅपलिकेशनचा वापर करण्यासाठी तुम्ही अधिकृत सरकारी अधिकारी किंवा सरकारी संस्थेचे प्रतिनिधी असणे आवश्यक आहे. नोंदणीच्या वेळी तुम्ही अचूक आणि संपूर्ण माहिती प्रदान करण्यास आणि तुमच्या लॉगिन पत्रांची गोपनीयता राखण्यास सहमत आहात.';

  @override
  String get acceptableUse => 'स्वीकार्य वापर';

  @override
  String get acceptableUseContent =>
      'तुम्ही सहमत नाही: (a) अनधिकृत उद्देशांसाठी अॅपलिकेशनचा वापर, (b) सिस्टमला अनधिकृत प्रवेश मिळवण्याचा प्रयत्न, (c) तुमच्या खाते पत्रांची अनधिकृत व्यक्तींसह शेअरिंग, (d) अॅपलिकेशनद्वारे कोणतेही क्रिमिनल क्रियाकलाप करणे, किंवा (e) कोणतेही लागू कायदे किंवा नियमांचे उल्लंघन करणे.';

  @override
  String get userResponsibilities => 'वापरकर्ता जिम्मेदारी';

  @override
  String get userResponsibilitiesContent =>
      'तुम्ही सर्वांगीणपणे जिम्मेदार आहात: (a) तुमच्या खाते सुरक्षा राखणे, (b) तुमच्या खाते वापरून केलेले सर्व क्रियाकलाप, (c) तुमच्या सरकारच्या धोरणांचे अनुपालन सुनिश्चित करणे, आणि (d) व्यवहार आणि ऑर्डर दरम्यान अचूक माहिती प्रदान करणे.';

  @override
  String get intellectualProperty => 'बौद्धिक संपत्ती';

  @override
  String get intellectualPropertyContent =>
      'mySupplyCO अॅपलिकेशनची सर्व सामग्री, वैशिष्ट्य आणि कार्यक्षमता सरकारी एजन्सीचा मालिकी आहे, कॉपीराइट आणि इतर बौद्धिक संपत्ती कायद्यांद्वारे सुरक्षित. तुम्ही पूर्व लेखी संमतीशिवाय कोणतीही सामग्री पुनरुत्पादित, वितरित किंवा प्रसारित करू शकत नाही.';

  @override
  String get limitationOfLiability => 'जबाबदारीचे मर्यादा';

  @override
  String get limitationOfLiabilityContent =>
      'mySupplyCO अॅपलिकेशन \"जसे आहे\" आधारावर प्रदान केले जाते. आम्ही गॅरंटी देत नाही की सेवा अव्यवधित किंवा त्रुटीमुक्त असेल. कायद्याद्वारे परवानगी दिलेल्या अधिकतम मर्यादेपर्यंत, तुमच्या अॅपलिकेशनच्या वापरामुळे उद्भवणाऱ्या कोणत्याही अप्रत्यक्ष, घटनेचे, विशेष किंवा परिणामी नुकसानीसाठी आम्ही जिम्मेदार नाही.';

  @override
  String get dataAndInformation => 'डेटा आणि माहिती';

  @override
  String get dataAndInformationContent =>
      'सर्व स्टॉक डेटा, ऑर्डर आणि व्यवहार रेकॉर्ड सरकारी एजन्सीची मालिकी आहे. तुम्ही सरकारी कार्यांव्यतिरिक्त अन्य उद्देशांसाठी ही माहिती कॉपी, वितरित किंवा वापरू शकत नाही गुरू नाही असे सहमती दिली.';

  @override
  String get accountTermination => 'खाते समाप्ति';

  @override
  String get accountTerminationContent =>
      'तुम्ही या अटींचे उल्लंघन केल्यास, अनधिकृत वापर केल्यास किंवा सरकारी नियमांचे पालन करण्यात अपयशी झाल्यास आम्ही तुमचे खाते निलंबित किंवा समाप्त करण्याचा अधिकार राखतो. समाप्ति तत्काळ आणि पुढील सूचनेशिवाय असू शकते.';

  @override
  String get modificationsToTerms => 'अटी मध्ये सुधार';

  @override
  String get modificationsToTermsContent =>
      'आम्ही कोणत्याही वेळी या अटींमध्ये सुधार करू शकतो. बदल पोस्ट केल्यानंतर तत्काळ प्रभावी होतील. पोस्ट केल्यानंतर अॅपलिकेशनचा सतत वापर अपडेट केलेल्या अटींच्या स्वीकृतीचा अर्थ आहे.';

  @override
  String get governingLaw => 'सरकारी कायदा';

  @override
  String get governingLawContent =>
      'या अटी भारताच्या कायद्यांद्वारे शासित आणि बांधलेल्या आहेत. कोणतीही कायदेशीर कारवाई किंवा प्रक्रिया योग्य न्यायालयांच्या अधिकारक्षेत्रच्या अधीन असेल.';

  @override
  String get lastUpdatedTerms =>
      '⚠ शेवटचा अपडेट: मार्च 2026. या अटी mySupplyCO अॅपलिकेशनच्या सर्व वापरकर्त्यांला लागू होतात. या अॅपलिकेशनचा वापर केल्याने, तुम्ही स्वीकारता की तुम्ही या अटी वाचल्या आहेत, समजल्या आहेत आणि बद्ध होण्यास सहमत आहात.';

  @override
  String get yourPrivacyIsProtected => 'तुमची गोपनीयता संरक्षित आहे';

  @override
  String get privacyDescription =>
      'आम्ही फक्त 3 माहिती संकलित करतो: तुमचे नाव, ईमेल आणि मोबाइल नंबर. आम्ही कधीही तुमचा डेटा शेअर, विक्रय किंवा गैरवापर करत नाही. तुमची माहिती एकमेवपणे सरकारी पुरवठा साखळी कार्यांसाठी वापरली जाते.';

  @override
  String get dataCollection => 'डेटा संकलन';

  @override
  String get dataCollectionContent =>
      'mySupplyCO नोंदणी आणि वापरादरम्यान तुमच्याकडून फक्त खालील व्यक्तिगत माहिती संकलित आणि संचित करते:';

  @override
  String get fullName => 'तुमचे पूर्ण नाव';

  @override
  String get emailAddress => 'तुमचा ईमेल पत्ता';

  @override
  String get mobileNumber => 'तुमचा मोबाइल नंबर';

  @override
  String get dataUsage => 'डेटा वापर';

  @override
  String get dataUsageContent => 'तुमची व्यक्तिगत माहिती एकमेवपणे वापरली जाते:';

  @override
  String get accountAuthentication => 'खाते प्रमाणीकरण आणि लॉग इन';

  @override
  String get orderConfirmations => 'ऑर्डर पुष्टिकरण आणि अपडेट पाठवणे';

  @override
  String get customerSupport => 'ग्राहक समर्थन प्रदान करणे';

  @override
  String get stockNotifications =>
      'स्टॉक बदल आणि सिस्टम सतर्कता बद्दल तुम्हाला सूचित करणे';

  @override
  String get governmentFunctions =>
      'सरकारी पुरवठा साखळी व्यवस्थापन कार्य पूर्ण करणे';

  @override
  String get whatWeDoNotDo => 'आम्ही काय करत नाही';

  @override
  String get doNotSellData =>
      'आम्ही तुमचा व्यक्तिगत डेटा विक्रय, शेअर किंवा व्यापार करत नाही';

  @override
  String get doNotMarketData =>
      'आम्ही तुमचा डेटा विपणन किंवा जाहिरातीसाठी वापरत नाही';

  @override
  String get doNotShareThirdParty =>
      'आम्ही तुमचा डेटा तृतीय पक्ष कंपन्यांशी शेअर करत नाही';

  @override
  String get doNotUseOutsideGov =>
      'आम्ही तुमचा डेटा सरकारी पुरवठा कार्यांव्यतिरिक्त उद्देशांसाठी वापरत नाही';

  @override
  String get doNotCombineData =>
      'आम्ही तुमचा डेटा बाहेरील स्त्रोतांसह एकत्रित करत नाही';

  @override
  String get dataSecurity => 'डेटा सुरक्षा';

  @override
  String get dataSecurityContent =>
      'आम्ही तुमची व्यक्तिगत माहिती सुरक्षित करण्यासाठी उद्योग-मानक सुरक्षा उपाय लागू करतो:';

  @override
  String get encryptedTransmission => 'एनक्रिप्ट डेटा प्रेषण (SSL/TLS)';

  @override
  String get secureServers => 'सुरक्षित सर्व्हर अवसंरचना';

  @override
  String get limitedAccess =>
      'व्यक्तिगत डेटा मर्यादित प्रवेश (केवल अधिकृत कर्मचारी)';

  @override
  String get securityAudits => 'नियमित सुरक्षा ऑडिट आणि अपडेट';

  @override
  String get governmentCompliance => 'सरकारी डेटा सुरक्षा मानदंड अनुपालन';

  @override
  String get yourRights => 'तुमचे अधिकार';

  @override
  String get yourRightsContent => 'तुम्हाला अधिकार आहे:';

  @override
  String get accessData => 'कोणत्याही वेळी तुमची व्यक्तिगत माहिती प्रवेश करा';

  @override
  String get correctData => 'चुकीची माहिती सुधार करण्याचा अनुरोध करा';

  @override
  String get deleteAccount => 'तुमचे खाते आणि डेटा हटवण्याचा अनुरोध करा';

  @override
  String get obtainCopy => 'तुमची व्यक्तिगत माहिती एक प्रतिलिपी प्राप्त करा';

  @override
  String get withdrawConsent => 'डेटा वापरासाठी सहमती मागे घ्या';

  @override
  String get dataRetention => 'डेटा त्याग';

  @override
  String get dataRetentionContent =>
      'तुमची व्यक्तिगत माहिती केवल सरकारी पुरवठा व्यवस्थापन कार्यांसाठी आवश्यक तर्तुद अवधी साठी राखली जाते. खाते हटवल्यानंतर, तुमचा डेटा 30 दिवसांमध्ये आमच्या सिस्टममधून कायमी हटविला जाईल, कायद्याद्वारे आवश्यक असलेल्या ठिकाणी सोडून.';

  @override
  String get changesToPrivacyPolicy => 'गोपनीयता धोरणामध्ये बदल';

  @override
  String get changesToPrivacyPolicyContent =>
      'आम्ही या गोपनीयता धोरणात समय-समयावर अपडेट करू शकतो. आम्ही ईमेल किंवा अॅपलिकेशनद्वारे कोणत्याही महत्वाच्या बदलांची सूचना देऊ. mySupplyCO चा सतत वापर अपडेट केलेल्या धोरणची स्वीकृती दर्शवितो.';

  @override
  String get contactUsPrivacy => 'आमसाठी संपर्क करा';

  @override
  String get contactUsPrivacyContent =>
      'जर तुम्हाला या गोपनीयता धोरणाबद्दल किंवा तुमच्या व्यक्तिगत डेटाबद्दल प्रश्न असतील तर कृपया आमसाठी संपर्क करा:';

  @override
  String get privacyEmail => 'ईमेल: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'फोन: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'पोर्टल: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 शेवटचा अपडेट: मार्च 2026. ही गोपनीयता धोरण mySupplyCO सेवांच्या अटींचा भाग आहे. या अॅपलिकेशनचा वापर करून, तुम्ही येथे वर्णित केलेल्या आमच्या गोपनीयता प्रथेस सहमती दिली आहे.';

  @override
  String get privacyPolicyPageTitle => 'गोपनीयता धोरण';

  @override
  String get termsConditionsPageTitle => 'अटी आणि शर्ती';

  @override
  String get helpSupportPageTitle => 'मदत आणि समर्थन';

  @override
  String get helpFaqCreateAccount => 'मी खाते कसे तयार करू?';

  @override
  String get helpFaqCreateAccountAns =>
      'MySupplyCo अॅप डाउनलोड करा आणि \"रजिस्टर\" टॅप करा. आपले नाव प्रविष्ट करा, आपण आपले Google खाते वापरू शकता किंवा मोबाइल नंबर वापरून लॉगिन करू शकता. जर आप मोबाइल नंबर वापरत असाल, तर OTP सत्यापन आवश्यक आहे.';

  @override
  String get helpFaqCheckStock => 'मी स्टॉक उपलब्धता कसे तपासू?';

  @override
  String get helpFaqCheckStockAns =>
      'लॉगिन केल्यानंतर, \"स्टॉक\" टैब टॅप करा. आपण आपल्या नियुक्त आपूर्ति केंद्रातून रिअल-टाइम इन्व्हेंटरी पाहू शकता. विशिष्ट वस्तू शोधण्यासाठी शोध पट्टी वापरा.';

  @override
  String get helpFaqNotifications => 'मला सूचना कसे मिळतात?';

  @override
  String get helpFaqNotificationsAns =>
      'सेटिंग्स → सतर्कता व्यवस्थापित करा. स्टॉक अपडेट आणि सिस्टम घोषणांसाठी सूचना सक्षम/अक्षम करा. पुश सूचनांसाठी अॅप परवानगी आवश्यक आहे.';

  @override
  String get helpFaqOfflineMode => 'ऑफलाइन मोड आहे का?';

  @override
  String get helpFaqOfflineModeAns =>
      'होय! अॅप स्वयंचलितपणे अलीकडील स्टॉक डेटा कॅश करते. आप इंटरनेट कनेक्शन व्यतिरिक्त पूर्वी लोड केलेली स्टॉक माहिती पाहू शकता.';

  @override
  String get governmentPortalText => 'सरकारी पोर्टल';

  @override
  String get privacyDataCollection => 'डेटा संकलन';

  @override
  String get privacyDataCollectionContent =>
      'mySupplyCO नोंदणी आणि वापरादरम्यान तुमच्याकडून फक्त खालील व्यक्तिगत माहिती संकलित आणि संचित करते:';

  @override
  String get privacyFullName => 'तुमचे पूर्ण नाव';

  @override
  String get privacyEmailAddress => 'तुमचा ईमेल पत्ता';

  @override
  String get privacyMobileNumber => 'तुमचा मोबाइल नंबर';

  @override
  String get privacyDataUsage => 'डेटा वापर';

  @override
  String get privacyDataUsageContent =>
      'तुमची व्यक्तिगत माहिती एकमेवपणे वापरली जाते:';

  @override
  String get privacyAccountAuthentication => 'खाते प्रमाणीकरण आणि लॉग इन';

  @override
  String get privacyCustomerSupport => 'ग्राहक समर्थन प्रदान करणे';

  @override
  String get privacyStockNotifications =>
      'स्टॉक बदल आणि सिस्टम सतर्कता बद्दल तुम्हाला सूचित करणे';

  @override
  String get privacyWhatWeDoNotDo => 'आम्ही काय करत नाही';

  @override
  String get privacyDoNotSell =>
      'आम्ही तुमचा व्यक्तिगत डेटा विक्रय, शेअर किंवा व्यापार करत नाही';

  @override
  String get privacyDoNotMarket =>
      'आम्ही तुमचा डेटा विपणन किंवा जाहिरातीसाठी वापरत नाही';

  @override
  String get privacyDoNotShareThirdParty =>
      'आम्ही तुमचा डेटा तृतीय पक्ष कंपन्यांशी शेअर करत नाही';

  @override
  String get privacyDoNotUseOutsideGov =>
      'आम्ही तुमचा डेटा सरकारी पुरवठा कार्यांव्यतिरिक्त उद्देशांसाठी वापरत नाही';

  @override
  String get privacyDoNotCombineData =>
      'आम्ही तुमचा डेटा बाहेरील स्त्रोतांसह एकत्रित करत नाही';

  @override
  String get privacyDataSecurity => 'डेटा सुरक्षा';

  @override
  String get privacyDataSecurityContent =>
      'आम्ही तुमची व्यक्तिगत माहिती सुरक्षित करण्यासाठी उद्योग-मानक सुरक्षा उपाय लागू करतो:';

  @override
  String get privacySecureServers => 'सुरक्षित सर्व्हर अवसंरचना';

  @override
  String get privacyLimitedAccess =>
      'व्यक्तिगत डेटा मर्यादित प्रवेश (केवल अधिकृत कर्मचारी)';

  @override
  String get privacySecurityAudits => 'नियमित सुरक्षा ऑडिट आणि अपडेट';

  @override
  String get privacyGovernmentCompliance =>
      'सरकारी डेटा सुरक्षा मानदंड अनुपालन';

  @override
  String get privacyYourRights => 'तुमचे अधिकार';

  @override
  String get privacyYourRightsContent => 'तुम्हाला अधिकार आहे:';

  @override
  String get privacyAccessData =>
      'कोणत्याही वेळी तुमची व्यक्तिगत माहिती प्रवेश करा';

  @override
  String get privacyCorrectData => 'चुकीची माहिती सुधार करण्याचा अनुरोध करा';

  @override
  String get privacyDeleteAccount => 'तुमचे खाते आणि डेटा हटवण्याचा अनुरोध करा';

  @override
  String get privacyWithdrawConsent => 'डेटा वापरासाठी सहमती मागे घ्या';

  @override
  String get privacyDataRetention => 'डेटा धारण';

  @override
  String get privacyDataRetentionContent =>
      'तुमची व्यक्तिगत माहिती केवल सरकारी पुरवठा व्यवस्थापन कार्यांसाठी आवश्यक तर्तुद अवधी साठी राखली जाते। खाते हटवल्यानंतर, तुमचा डेटा 30 दिवसांमध्ये आमच्या सिस्टममधून कायमी हटविला जाईल, कायद्याद्वारे आवश्यक असलेल्या ठिकाणी सोडून।';

  @override
  String get privacyChangesToPolicy => 'गोपनीयता धोरणामध्ये बदल';

  @override
  String get privacyChangesToPolicyContent =>
      'आम्ही या गोपनीयता धोरणामध्ये समय-समयावर अपडेट करू शकतो। आम्ही ईमेल किंवा अॅपलिकेशनद्वारे कोणत्याही महत्वाच्या बदलांची सूचना देऊ। mySupplyCO चा सतत वापर अपडेट केलेल्या धोरणची स्वीकृती दर्शवितो।';

  @override
  String get privacyProtectedTitle => 'तुमची गोपनीयता संरक्षित आहे';

  @override
  String get privacyProtectedDescription =>
      'आम्ही फक्त 3 माहिती संकलित करतो: तुमचे नाव, ईमेल आणि मोबाइल नंबर। आम्ही कधीही तुमचा डेटा शेअर, विक्रय किंवा गैरवापर करत नाही। तुमची माहिती एकमेवपणे सरकारी पुरवठा साखळी कार्यांसाठी वापरली जाते।';

  @override
  String get privacyFooterNote =>
      '📋 शेवटचा अपडेट: मार्च 2026. ही गोपनीयता धोरण mySupplyCO सेवांच्या अटींचा भाग आहे। या अॅपलिकेशनचा वापर करून, तुम्ही येथे वर्णित केलेल्या आमच्या गोपनीयता प्रथेस सहमती दिली आहे।';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'सरकारी पुरवठा व्यवस्थापन प्रणाली';

  @override
  String get termsIntroContent =>
      'कृपया MySupplyCo ॲप्लिकेशन वापरण्यापूर्वी या अटी आणि शर्ती काळजीपूर्वक वाचा. तुमचा या ॲप्लिकेशनचा प्रवेश आणि वापर या अटींच्या तुमच्या स्वीकृती आणि पालनावर अवलंबून आहे.';

  @override
  String get termsUserAgreement => 'वापरकर्ता करार';

  @override
  String get termsUserAgreementContent =>
      'MySupplyCo ॲप्लिकेशनमध्ये प्रवेश करून आणि वापरून, तुम्ही या अटी आणि शर्तींना बांधील असण्यास सहमती देता. हे ॲप्लिकेशन अधिकृत सरकारी अधिकारी आणि संस्थांसाठी पुरवठा साखळी व्यवस्थापन सुलभ करण्यासाठी डिझाइन केले आहे.';

  @override
  String get termsEligibility => 'पात्रता';

  @override
  String get termsEligibilityContent =>
      'हे ॲप्लिकेशन वापरण्यासाठी तुम्ही अधिकृत नागरिक असणे आवश्यक आहे. तुम्ही नोंदणीदरम्यान अचूक आणि संपूर्ण माहिती प्रदान करण्यास आणि तुमच्या लॉगिन क्रेडेन्शियल्सची गोपनीयता राखण्यास सहमती देता.';

  @override
  String get termsAcceptableUse => 'स्वीकार्य वापर';

  @override
  String get termsAcceptableUseContent =>
      'तुम्ही हे न करण्यास सहमती देता: (अ) अनधिकृत हेतूंसाठी ॲप्लिकेशन वापरणे, (ब) सिस्टममध्ये अनधिकृत प्रवेश मिळविण्याचा प्रयत्न करणे, (क) अनधिकृत व्यक्तींसोबत तुमचे खाते क्रेडेन्शियल्स शेअर करणे, (ड) ॲप्लिकेशनद्वारे कोणतेही बेकायदेशीर क्रियाकलाप करणे, किंवा (इ) लागू असलेल्या कोणत्याही कायद्यांचे किंवा नियमांचे उल्लंघन करणे.';

  @override
  String get termsUserResponsibilities => 'वापरकर्ता जबाबदाऱ्या';

  @override
  String get termsUserResponsibilitiesContent =>
      'तुम्ही यासाठी पूर्णपणे जबाबदार आहात: (अ) तुमच्या खात्याची सुरक्षितता राखणे, (ब) तुमचे खाते वापरून केले जाणारे सर्व क्रियाकलाप, (क) तुमच्या सरकारच्या धोरणांचे पालन सुनिश्चित करणे आणि (ड) व्यवहार आणि ऑर्डर्स दरम्यान अचूक माहिती प्रदान करणे.';

  @override
  String get termsIntellectualProperty => 'बौद्धिक संपदा';

  @override
  String get termsIntellectualPropertyContent =>
      'MySupplyCo ॲप्लिकेशनची सर्व सामग्री, वैशिष्ट्ये आणि कार्यक्षमता सरकारी एजन्सीच्या मालकीची आहेत, कॉपीराइट आणि इतर बौद्धिक संपदा कायद्यांद्वारे संरक्षित आहेत. तुम्ही पूर्व लेखी संमतीशिवाय कोणत्याही सामग्रीची पुनरावृत्ती, वितरण किंवा प्रसारण करू शकत नाही.';

  @override
  String get termsLimitationOfLiability => 'जबाबदारीची मर्यादा';

  @override
  String get termsLimitationOfLiabilityContent =>
      'MySupplyCo ॲप्लिकेशन \"जसे आहे\" आधारावर प्रदान केले जाते. सेवा विनाव्यत्यय किंवा त्रुटी-मुक्त असेल याची आम्ही हमी देत नाही. कायद्याद्वारे परवानगी असलेल्या जास्तीत जास्त मर्यादेपर्यंत, आम्ही तुमच्या ॲप्लिकेशनच्या वापरामुळे उद्भवणाऱ्या कोणत्याही अप्रत्यक्ष, अनुषंगिक, विशेष किंवा परिणामी नुकसानीसाठी जबाबदार नाही.';

  @override
  String get termsDataAndInformation => 'डेटा आणि माहिती';

  @override
  String get termsDataAndInformationContent =>
      'सर्व स्टॉक डेटा आणि व्यवहार नोंदी ही सरकारी एजन्सीची मालमत्ता आहे. अधिकृत सरकारी कार्यांव्यतिरिक्त इतर हेतूंसाठी ही माहिती कॉपी, वितरित किंवा न वापरण्यास तुम्ही सहमती देता. आम्ही वैयक्तिक डेटा कसा हाताळतो याच्या तपशीलांसाठी आमचे गोपनीयता धोरण पहा.';

  @override
  String get termsAccountTermination => 'खाते समाप्ती';

  @override
  String get termsAccountTerminationContent =>
      'तुम्ही या अटींचे उल्लंघन केल्यास, अनधिकृत वापरात गुंतल्यास किंवा सरकारी नियमांचे पालन करण्यात अयशस्वी झाल्यास तुमचे खाते निलंबित किंवा समाप्त करण्याचा अधिकार आम्ही राखून ठेवतो. समाप्ती त्वरित आणि पुढील सूचनेशिवाय असू शकते.';

  @override
  String get termsModificationsToTerms => 'अटींमध्ये बदल';

  @override
  String get termsModificationsToTermsContent =>
      'आम्ही या अटी आणि शर्तींमध्ये कधीही बदल करू शकतो. बदल पोस्ट केल्यावर त्वरित प्रभावी होतील. कोणत्याही बदलानंतर ॲप्लिकेशनचा सतत वापर केल्यास तुम्ही अद्यतनित अटी स्वीकारल्या आहेत असे मानले जाईल.';

  @override
  String get termsGoverningLaw => 'प्रशासकीय कायदा';

  @override
  String get termsGoverningLawContent =>
      'या अटी आणि शर्ती भारताच्या कायद्याद्वारा शासित आणि तयार केल्या जातात. कोणतीही कायदेशीर कारवाई किंवा कार्यवाही योग्य न्यायालयांच्या अधिकार क्षेत्राच्या अधीन असेल.';

  @override
  String get termsFooterNote =>
      '⚠ शेवटचे अपडेट: मार्च २०२६. या अटी आणि शर्ती MySupplyCo ॲप्लिकेशनच्या सर्व वापरकर्त्यांना लागू होतात. हे ॲप्लिकेशन वापरून, तुम्ही हे मान्य करता की तुम्ही या अटी वाचल्या आहेत, समजून घेतल्या आहेत आणि त्यांना बांधील राहण्यास सहमत आहात.';

  @override
  String get accessibilityPageTitle => 'प्रवेशयोग्यता';

  @override
  String get colourBlindFriendly => 'रंग अंधत्व अनुकूल';
}
