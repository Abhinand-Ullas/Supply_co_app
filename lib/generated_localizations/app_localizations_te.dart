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

  @override
  String get frequentlyAskedQuestions => 'తరచుగా అడిగే ప్రశ్నలు';

  @override
  String get needMoreHelp => 'మరిన్ని సహాయం కావాలా?';

  @override
  String get emailSupport => 'ఈమెయిల్ సపోర్ట్';

  @override
  String get phoneSupport => 'ఫోన్ సపోర్ట్';

  @override
  String get governmentPortal => 'ప్రభుత్వ పోర్టల్';

  @override
  String get supportEmail => 'support@mysupplyco.gov.in';

  @override
  String get supportPhone => '+91-1800-SUPPLY-GO';

  @override
  String get supportWebsite => 'www.mysupplyco.gov.in';

  @override
  String get faqQ1 => 'నేను ఖాతాను ఎలా సృష్టించాలి?';

  @override
  String get faqA1 =>
      'mySupplyCO యాప్‌ను డౌన్‌లోడ్ చేసి \"సైన్ అప్\"‌ను నొక్కండి. మీ పేరు, ఈమెయిల్ మరియు మొబైల్ నంబర్‌ను నమోదు చేయండి. మీరు ధృవీకరణ కోడ్‌ను పొందుతారు. నిబంధన పూర్తి చేయడానికి దానిని నమోదు చేయండి.';

  @override
  String get faqQ2 => 'నేను స్టాక్ లభ్యతను ఎలా తనిఖీ చేయాలి?';

  @override
  String get faqA2 =>
      'లాగిన్ చేసిన తర్వాత, \"స్టాక్\" ట్యాబ్‌ను నొక్కండి. మీ నియమించిన సరఫరా కేంద్రం నుండి రియల్-టైమ్ ఇన్వెంటరీని చూడవచ్చు. నిర్దిష్ట వస్తువులను కనుగొనելու కోసం శోధన పట్టీని ఉపయోగించండి.';

  @override
  String get faqQ3 => 'ఎవరు ఆర్డర్‌ను ఇవ్వచ్చు?';

  @override
  String get faqA3 =>
      'mySupplyCO ​​ támWith నిబంధిత సర్కారు అనుమతિ గల అధికారులు ఆర్డర్‌ను ఇవ్వచ్చు. మీ ప్రవేశ స్థితి మీ సర్కారు సంస్థ మరియు పాత్రపై ఆధారపడి ఉంటుంది.';

  @override
  String get faqQ4 => 'నేను ఎలా నోటిఫికేషన్‌లు పొందను?';

  @override
  String get faqA4 =>
      'సెట్టింగ్‌లు → హెచ్చరికలను నిర్వహించండికి వెళ్లండి. స్టాక్ నవీకరణలు, ఆర్డర్ స్థితి మరియు సిస్టమ్ ప్రకటనల కోసం నోటిఫికేషన్‌లను ప్రారంభించండి/ఆపండి.';

  @override
  String get faqQ5 => 'ఆఫ్‌లైన్ మోడ్ ఉందా?';

  @override
  String get faqA5 =>
      'అవును! యాప్ స్వయంచాలకంగా ఇటీవలి స్టాక్ డేటాను కాష్ చేస్తుంది. ఇంటర‌నెట్ కనెక్షన్ లేకుండా సరఫర‌దారైన లోడ్ చేసిన స్టాక్ సమాచారాన్ని చూడవచ్చు.';

  @override
  String get faqQ6 => 'నేను నా పాస్‌వర్డ్‌ను ఎలా రీసెట్ చేయాలి?';

  @override
  String get faqA6 =>
      'లాగిన్ పేజీపై, \"పాస్‌వర్డ్‌ను మర్చిపోయారా?\" నొక్కండి మరియు మీ నిబంధిత ఈమెయిల్‌ను నమోదు చేయండి. మీరు ఈమెయిల్ ద్వారా రీసెట్ లింక్‌ను పొందుతారు. కొత్త పాస్‌వర్డ్‌ను సృష్టించడానికి సూచన్నలను అనుసరించండి.';

  @override
  String get governmentSupplyManagementSystem =>
      'ప్రభుత్వ సరఫరా నిర్వహణ వ్యవస్థ';

  @override
  String get pleaseReadTermsCarefully =>
      'mySupplyCO అప్లికేషన్‌ను ఉపయోగించే ముందు ఈ నిబంధనలను జాగ్రత్తగా చదవండి. ఈ అప్లికేషన్‌కు మీ ప్రవేశం మరియు ఉపయోగం ఈ నిబంధనల అంగీకారం మరియు పాలనపై ఆధారపడి ఉంటుంది.';

  @override
  String get userAgreement => 'వినియోగదారు ఒప్పందం';

  @override
  String get userAgreementContent =>
      'mySupplyCO అప్లికేషన్‌ను ఆక్సెస్ చేసి ఉపయోగించడం ద్వారా, మీరు ఈ నిబంధనలచే కట్టుబడి ఉండటానికి సమ్మతి చెప్తారు. ఈ అప్లికేషన్ అనుమతిచేసిన సర్కారు అధికారులు మరియు సంస్థల కోసం సరఫరా చेయిన నిర్వహణను సులభతరం చేయడానికి రూపొందించబడింది.';

  @override
  String get eligibility => 'యోగ్యత';

  @override
  String get eligibilityContent =>
      'ఈ అప్లికేషన్‌ను ఉపయోగించడానికి మీరు అనుమతిచేసిన సర్కారు అధికారి లేదా సర్కారు సంస్థ ప్రతిపాదకుడు ఉండాలి. మీరు నిబంధన సమయంలో ఖచ్చితమైన మరియు సంపూర్ణ సమాచారాన్ని అందించాలని మరియు మీ లాగిన్ ఆధారాల గోప్యतను నిర్వహించాలని సమ్మతి చెప్తారు.';

  @override
  String get acceptableUse => 'ఆమోదయోగ్య ఉపయోగం';

  @override
  String get acceptableUseContent =>
      'మీరు అంగీకరిస్తున్నారు: (a) అనుమతి లేని ఉద్దేశ్యల కోసం అప్లికేషన్‌ను ఉపయోగించకపోవటం, (b) సిస్టమ్‌కు అనుమతి లేని ప్రవేశాన్ని పొందటానికి ప్రయత్నం చేయకపోవటం, (c) మీ ఖాతా ఆధారాలను అనుమతి లేని వ్యక్తులతో భాగస్వామ్యం చేయకపోవటం, (d) అప్లికేషన్ ద్వారా ఏదైనా చట్టవిరుద్ధ కార్యకలాపాలు నిర్వహించకపోవటం, లేదా (e) ఏదైనా వర్తించే చట్టాలు లేదా నియమాలను ఉల్లంఘించకపోవటం.';

  @override
  String get userResponsibilities => 'వినియోగదారు బాధ్యతలు';

  @override
  String get userResponsibilitiesContent =>
      'మీరు పూర్తిగా బాధ్యతాధీనులు: (a) మీ ఖాతా సురక్షను నిర్వహించడం, (b) మీ ఖాతాను ఉపయోగించి నిర్వహించిన అన్ని కార్యకలాపాలు, (c) మీ సర్కారు విధానల అనుగుణత నిশ్చితం చేయడం, మరియు (d) లావాదేవీలు మరియు ఆర్డర్‌ల సమయంలో ఖచ్చితమైన సమాచారాన్ని అందించడం.';

  @override
  String get intellectualProperty => 'బೌద్ధిక సంపత్తి';

  @override
  String get intellectualPropertyContent =>
      'mySupplyCO అప్లికేషన్ యొక్క సమస్త సামগ్రి, లక్షణాలు మరియు కార్యాచరణ సర్కారు ఏజెంసీకి చెందినవి, కాపీరైట్ మరియు ఇతర బౌద్ధిక సంపత్తి చట్టాల ద్వారా రక్షించబడ్డాయి. మీరు ముందస్తు లిఖిత సమ్మతి లేకుండా ఏదైనా సామగ్రిని పునరుత్పత్తి, పంపిణీ లేదా ప్రసారం చేయలేరు.';

  @override
  String get limitationOfLiability => 'బాధ్యత యొక్క పరిమితి';

  @override
  String get limitationOfLiabilityContent =>
      'mySupplyCO అప్లికేషన్ \"ఉందంతవలె\" ఆధారంపై అందించబడుతుంది. సేవ నిరంతరాయంగా లేదా లోపం లేనిదిగా ఉంటుందని మేము హామీ ఇవ్వం లేదు. చట్టం ద్వారా అనుమతించిన వరకు, మీ అప్లికేషన్ ఉపయోగం నుండి ఉత్పన్నమైన ఏదైనా పరోక్ష, ఘటన, ప్రత్యేక, లేదా పర్యవసానవ నష్టం కోసం మేము బాధ్యులు కాము.';

  @override
  String get dataAndInformation => 'డేటా మరియు సమాచారం';

  @override
  String get dataAndInformationContent =>
      'సమస్త స్టాక్ డేటా, ఆర్డర్‌లు మరియు లావాదేవీ రికార్డ్‌లు సర్కారు ఏజెంసీకి చెందినవి. మీరు ఈ సమాచారాన్ని సర్కారు విధానాలు కాకుండా ఇతర ప్రయోజనాల కోసం కాపీ, పంపిణీ లేదా ఉపయోగం చేయకుండా సమ్మతి చెప్తారు.';

  @override
  String get accountTermination => 'ఖాతా సమాప్తి';

  @override
  String get accountTerminationContent =>
      'మీరు ఈ నిబంధనలను ఉల్లంఘించినా, అనుమతి లేని ఉపయోగంలో నిమగ్నమైనా, లేదా సర్కారు నియమాలను పాటించకపోయినా, మీ ఖాతాను సస్పెండ్ లేదా సమాప్త చేసే హక్కును మరుమేరు కల్లు. సమాప్తి తక్షణ మరియు తదుపరి నోటీసు లేకుండా ఉండవచ్చు.';

  @override
  String get modificationsToTerms => 'నిబంధనలలో సవరణలు';

  @override
  String get modificationsToTermsContent =>
      'మేము ఏదైనా సమయంలో ఈ నిబంధనలను సవరించవచ్చు. సవరణలు పోస్ట్ చేయకుండా వెంటనే సమర్థవంతమవుతాయి. పోస్ట్ చేసిన తర్వాత అప్లికేషన్ యొక్క నిరంతర ఉపయోగం సవరించిన నిబంధనలను అంగీకారం చేస్తుంది.';

  @override
  String get governingLaw => 'పాలకీయ చట్టం';

  @override
  String get governingLawContent =>
      'ఈ నిబంధనలు భారతదేశ చట్టాల ద్వారా నిర్వహించబడతాయి మరియు నిర్మితమవుతాయి. ఏదైనా చట్టపరమైన చర్య లేదా విధానం సమర్థవంత న్యాయస్థానాల యొక్క అధికారానికి లోబడి ఉంటుంది.';

  @override
  String get lastUpdatedTerms =>
      '⚠ చివరిగా నవీకరించిన: మార్చి 2026. ఈ నిబంధనలు mySupplyCO అప్లికేషన్ యొక్క సమస్త వినియోగదారులకు వర్తిస్తాయి. ఈ అప్లికేషన్‌ను ఉపయోగించడం ద్వారా, మీరు ఈ నిబంధనలను చదివినట్లు, అర్థం చేసుకున్నట్లు మరియు పాలనకు సమ్మతి చెప్తారు.';

  @override
  String get yourPrivacyIsProtected => 'మీ గోప్యత రక్షించబడుతుంది';

  @override
  String get privacyDescription =>
      'మేము 3 సమాచారం మాత్రమే సংకలనం చేస్తాము: మీ పేరు, ఈమెయిల్ మరియు మొబైల్ నంబర్. మేము ఎప్పుడూ మీ డేటాను భాగస్వామ్యం, విక్రయం లేదా దుర్వినియోగం చేయము. మీ సమాచారం ఎక్సక్లూసివ్‌గా సర్కారు సరఫరా చేయిన నిర్వహణ కోసం ఉపయోగించబడుతుంది.';

  @override
  String get dataCollection => 'డేటా సంకలనం';

  @override
  String get dataCollectionContent =>
      'mySupplyCO నిబంధన మరియు ఉపయోగం సమయంలో మీ నుండి కింది ব్యక్తిగత సమాచారం మాత్రమే సంకలనం మరియు నిల్వ చేస్తుంది:';

  @override
  String get fullName => 'మీ పూర్తి పేరు';

  @override
  String get emailAddress => 'మీ ఈమెయిల్ సరిపోయుటచే';

  @override
  String get mobileNumber => 'మీ మొబైల్ నంబర్';

  @override
  String get dataUsage => 'డేటా ఉపయోగం';

  @override
  String get dataUsageContent =>
      'మీ ప్రత్యేక డేటా ఎక్సక్లూసివ్‌గా ఉపయోగించబడుతుంది:';

  @override
  String get accountAuthentication => 'ఖాతా ప్రామాణికత మరియు లాగిన్';

  @override
  String get orderConfirmations => 'ఆర్డర్ నిర్ధారణలు మరియు నవీకరణలను పంపడం';

  @override
  String get customerSupport => 'కస్టమర్ సపోర్ట్ అందించడం';

  @override
  String get stockNotifications =>
      'స్టాక్ మార్పులు మరియు సిస్టమ్ హెచ్చరికల గురించి మీకు తెలియజేయడం';

  @override
  String get governmentFunctions =>
      'సర్కారు సరఫరా చేయిన నిర్వహణ కార్యకలాపాలను పూర్తి చేయడం';

  @override
  String get whatWeDoNotDo => 'మేము ఏమి చేయం లేదు';

  @override
  String get doNotSellData =>
      'మేము మీ ప్రత్యేక డేటాను విక్రయం, భాగస్వామ్యం లేదా ట్రేడ్ చేయం లేదు';

  @override
  String get doNotMarketData =>
      'మేము మీ డేటాను మార్కెటింగ్ లేదా ప్రకటన కోసం ఉపయోగం చేయం లేదు';

  @override
  String get doNotShareThirdParty =>
      'మేము మీ డేటాను మూడవ పక్ష సంస్థల తో భాగస్వామ్యం చేయం లేదు';

  @override
  String get doNotUseOutsideGov =>
      'మేము సర్కారు సరఫరా విధానాలకు వెలుపల ఉద్దేశ్యాల కోసం మీ డేటాను ఉపయోగం చేయం లేదు';

  @override
  String get doNotCombineData =>
      'మేము మీ డేటాను బాహ్య సూత్రాల తో సంయోజితం చేయం లేదు';

  @override
  String get dataSecurity => 'డేటా సుരక్షా';

  @override
  String get dataSecurityContent =>
      'మేము మీ ప్రత్యేక సమాచారాన్ని రక్షించడానికి పరిశ్రమ-ప్రమాణ సుదీర్ఘ చర్యలు అమలు చేస్తాము:';

  @override
  String get encryptedTransmission =>
      'ఎన్క్రిప్ట్ డేటా ట్రాన్స్‌మిషన్ (SSL/TLS)';

  @override
  String get secureServers => 'సురక్షిత సర్వర్ సంస్థ';

  @override
  String get limitedAccess =>
      'ప్రత్యేక డేటా (అనుమతిచేసిన సిబ్బంది మాత్రమే) సిమిత ప్రవేశం';

  @override
  String get securityAudits => 'సాధారణ సుదీర్ఘ ఆడిట్‌లు మరియు నవీకరణలు';

  @override
  String get governmentCompliance => 'సర్కారు డేటా సుదీర్ఘ ప్రమాణాల పాలన';

  @override
  String get yourRights => 'మీ హక్కులు';

  @override
  String get yourRightsContent => 'మీకు హక్కు ఉంది:';

  @override
  String get accessData => 'ఏదైనా సమయంలో మీ ప్రత్యేక డేటాను ఆక్సెస్ చేయండి';

  @override
  String get correctData =>
      'ఖచ్చితం లేని సమాచారాన్ని సంస్కరించమని అభ్యర్థించండి';

  @override
  String get deleteAccount => 'మీ ఖాతా మరియు డేటాను తొలగించమని అభ్యర్థించండి';

  @override
  String get obtainCopy => 'మీ ప్రత్యేక సమాచారం యొక్క ఒక ప్రతిని పొందండి';

  @override
  String get withdrawConsent => 'డేటా ఉపయోగం కోసం సమ్మతిని ఉపసంహరించండి';

  @override
  String get dataRetention => 'డేటా ధారణ';

  @override
  String get dataRetentionContent =>
      'మీ ప్రత్యేక డేటా సర్కారు సరఫరా నిర్వహణ కార్యకలాపాల కోసం అవసరమైన వరకు మాత్రమే ధరిస్తాయి. ఖాతా తొలగించిన తర్వాత, మీ డేటా 30 రోజుల్లో మా సిస్టమ్ నుండి శాశ్వతంగా తొలగించబడుతుంది, చట్టం ద్వారా అవసరమైన చోట్ల కోసం మినహాయించి.';

  @override
  String get changesToPrivacyPolicy => 'గోప్యత విధానంలో మార్పులు';

  @override
  String get changesToPrivacyPolicyContent =>
      'మేము ఈ గోప్యత విధానాన్ని ఎప్పటికైనా నవీకరించవచ్చు. ఈమెయిల్ లేదా అప్లికేషన్ ద్వారా ఏదైనా ముఖ్యమైన మార్పుల గురించి వినియోగదారులకు తెలియజేస్తాము. mySupplyCO యొక్క నిరంతర ఉపయోగం సవరించిన విధానం యొక్క ఆమోదం సూచిస్తుంది.';

  @override
  String get contactUsPrivacy => 'మాకు సంప్రదించండి';

  @override
  String get contactUsPrivacyContent =>
      'ఈ గోప్యత విధానం లేదా మీ ప్రత్యేక డేటా గురించి మీకు ప్రశ్నలు ఉంటే, దయచేసి మాకు సంప్రదించండి:';

  @override
  String get privacyEmail => 'ఈమెయిల్: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'ఫోన్: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'పోర్టల్: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 చివరిగా నవీకరించిన: మార్చి 2026. ఈ గోప్యత విధానం mySupplyCO సేవా నిబంధనలలో భాగం. ఈ అప్లికేషన్‌ను ఉపయోగించడం ద్వారా, మీరు ఇక్కడ రూపొందించిన మా గోప్యత ప్రాముఖ్యతకు సమ్మతి చెప్తారు.';

  @override
  String get privacyPolicyPageTitle => 'గోపనీయతా విధానం';

  @override
  String get termsConditionsPageTitle => 'నిబంధనలు మరియు షరతులు';

  @override
  String get helpSupportPageTitle => 'సహాయం మరియు సపోర్టు';

  @override
  String get helpFaqCreateAccount => 'నేను ఖాతాను ఎలా సృష్టించాలి?';

  @override
  String get helpFaqCreateAccountAns =>
      'MySupplyCo యాప్‌ను డౌన్‌లోడ్ చేసి \"రిజిస్టర్\"‌ను నొక్కండి. మీ పేరు నమోదు చేయండి, మీరు మీ గూగుల్ ఖాతాను ఉపయోగించవచ్చు లేదా మొబైల్ నంబర్‌ను ఉపయోగించి లాగిన్ చేయవచ్చు. మీరు మొబైల్ నంబర్‌ను ఉపయోగిస్తుంటే, OTP ధృవీకరణ అవసరం.';

  @override
  String get helpFaqCheckStock => 'నేను స్టాక్ లభ్యతను ఎలా తనిఖీ చేయాలి?';

  @override
  String get helpFaqCheckStockAns =>
      'లాగిన్ చేసిన తర్వాత, \"స్టాక్\" ట్యాబ్‌ను నొక్కండి. మీ నియమించిన సరఫరా కేంద్రం నుండి రియల్-టైమ్ ఇన్వెంటరీని చూడవచ్చు. నిర్దిష్ట వస్తువులను కనుగొనడానికి శోధన బార్‌ను ఉపయోగించండి.';

  @override
  String get helpFaqNotifications => 'నేను ఎలా నోటిఫికేషన్‌లు పొందను?';

  @override
  String get helpFaqNotificationsAns =>
      'సెట్టింగ్‌లు → హెచ్చరికలను నిర్వహించండికి వెళ్లండి స్టాక్ నవీకరణలు మరియు సిస్టమ్ ప్రకటనల కోసం నోటిఫికేషన్‌లను ప్రారంభించండి/ఆపండి. పుష్ నోటిఫికేషన్‌లకు యాప్ అనుమతి అవసరం.';

  @override
  String get helpFaqOfflineMode => 'ఆఫ్‌లైన్ మోడ్ ఉందా?';

  @override
  String get helpFaqOfflineModeAns =>
      'అవును! యాప్ స్వయంచాలకంగా ఇటీవలి స్టాక్ డేటాను కాష్ చేస్తుంది. ఇంటర‌నెట్ కనెక్షన్ లేకుండా సరఫర‌దారైన లోడ్ చేసిన స్టాక్ సమాచారాన్ని చూడవచ్చు.';

  @override
  String get governmentPortalText => 'ప్రభుత్వ పోర్టల్';

  @override
  String get privacyDataCollection => 'డేటా సంకలనం';

  @override
  String get privacyDataCollectionContent =>
      'mySupplyCO నిబంధన మరియు ఉపయోగం సమయంలో మీ నుండి కింది ব్యక్తిగత సమాచారం మాత్రమే సంకలనం మరియు నిల్వ చేస్తుంది:';

  @override
  String get privacyFullName => 'మీ పూర్తి పేరు';

  @override
  String get privacyEmailAddress => 'మీ ఈమెయిల్ సరిల్లు';

  @override
  String get privacyMobileNumber => 'మీ మొబైల్ నంబర్';

  @override
  String get privacyDataUsage => 'డేటా ఉపయోగం';

  @override
  String get privacyDataUsageContent =>
      'మీ ప్రత్యేక డేటా ఎక్సక్లూసివ్‌గా ఉపయోగించబడుతుంది:';

  @override
  String get privacyAccountAuthentication => 'ఖాతా ప్రామాణికత మరియు లాగిన్';

  @override
  String get privacyCustomerSupport => 'కస్టమర్ సపోర్ట్ అందించడం';

  @override
  String get privacyStockNotifications =>
      'స్టాక్ మార్పులు మరియు సిస్టమ్ హెచ్చరికల గురించి మీకు తెలియజేయడం';

  @override
  String get privacyWhatWeDoNotDo => 'మేము ఏమి చేయం లేదు';

  @override
  String get privacyDoNotSell =>
      'మేము మీ ప్రత్యేక డేటాను విక్రయం, భాగస్వామ్యం లేదా ట్రేడ్ చేయం లేదు';

  @override
  String get privacyDoNotMarket =>
      'మేము మీ డేటాను మార్కెటింగ్ లేదా ప్రకటన కోసం ఉపయోగం చేయం లేదు';

  @override
  String get privacyDoNotShareThirdParty =>
      'మేము మీ డేటాను మూడవ పక్ష సంస్థల తో భాగస్వామ్యం చేయం లేదు';

  @override
  String get privacyDoNotUseOutsideGov =>
      'మేము సర్కారు సరఫరా విధానాలకు వెలుపల ఉద్దేశ్యల కోసం మీ డేటాను ఉపయోగం చేయం లేదు';

  @override
  String get privacyDoNotCombineData =>
      'మేము మీ డేటాను బాహ్య సూత్రాల తో సంయోజితం చేయం లేదు';

  @override
  String get privacyDataSecurity => 'డేటా సురక్ష';

  @override
  String get privacyDataSecurityContent =>
      'మేము మీ ప్రత్యేక సమాచారాన్ని రక్షించడానికి పరిశ్రమ-ప్రమాణ సుదీర్ఘ చర్యలు అమలు చేస్తాము:';

  @override
  String get privacySecureServers => 'సురక్షిత సర్వర్ సంస్థ';

  @override
  String get privacyLimitedAccess =>
      'ప్రత్యేక డేటా (అనుమతిచేసిన సిబ్బంది మాత్రమే) సిమిత ప్రవేశం';

  @override
  String get privacySecurityAudits => 'సాధారణ సుదీర్ఘ ఆడిట్‌లు మరియు నవీకరణలు';

  @override
  String get privacyGovernmentCompliance =>
      'సర్కారు డేటా సుదీర్ఘ ప్రమాణాల పాలన';

  @override
  String get privacyYourRights => 'మీ హక్కులు';

  @override
  String get privacyYourRightsContent => 'మీకు హక్కు ఉంది:';

  @override
  String get privacyAccessData =>
      'ఏదైనా సమయంలో మీ ప్రత్యేక డేటాను ఆక్సెస్ చేయండి';

  @override
  String get privacyCorrectData =>
      'ఖచ్చితం లేని సమాచారాన్ని సంస్కరించమని అభ్యర్థించండి';

  @override
  String get privacyDeleteAccount =>
      'మీ ఖాతా మరియు డేటాను తొలగించమని అభ్యర్థించండి';

  @override
  String get privacyWithdrawConsent => 'డేటా ఉపయోగం కోసం సమ్మతిని ఉపసంహరించండి';

  @override
  String get privacyDataRetention => 'డేటా ధారణ';

  @override
  String get privacyDataRetentionContent =>
      'మీ ప్రత్యేక డేటా సర్కారు సరఫరా నిర్వహణ కార్యకలాపాల కోసం అవసరమైన వరకు మాత్రమే ధరిస్తాయి. ఖాతా తొలగించిన తర్వాత, మీ డేటా 30 రోజుల్లో మా సిస్టమ్ నుండి శాశ్వతంగా తొలగించబడుతుంది, చట్టం ద్వారా అవసరమైన చోట్ల కోసం మినహాయించి.';

  @override
  String get privacyChangesToPolicy => 'గోప్యత విధానంలో మార్పులు';

  @override
  String get privacyChangesToPolicyContent =>
      'మేము ఈ గోప్యత విధానాన్ని ఎప్పటికైనా నవీకరించవచ్చు. ఈమెయిల్ లేదా అప్లికేషన్ ద్వారా ఏదైనా ముఖ్యమైన మార్పుల గురించి వినియోగదారులకు తెలియజేస్తాము. mySupplyCO యొక్క నిరంతర ఉపయోగం సవరించిన విధానం యొక్క ఆమోదం సూచిస్తుంది.';

  @override
  String get privacyProtectedTitle => 'మీ గోప్యత రక్షించబడుతుంది';

  @override
  String get privacyProtectedDescription =>
      'మేము 3 సమాచారం మాత్రమే సంకలనం చేస్తాము: మీ పేరు, ఈమెయిల్ మరియు మొబైల్ నంబర్. మేము ఎప్పుడూ మీ డేటాను భాగస్వామ్యం, విక్రయం లేదా దుర్వినియోగం చేయము. మీ సమాచారం ఎక్సక్లూసివ్‌గా సర్కారు సరఫరా చేయిన నిర్వహణ కోసం ఉపయోగించబడుతుంది.';

  @override
  String get privacyFooterNote =>
      '📋 చివరిగా నవీకరించిన: మార్చి 2026. ఈ గోప్యత విధానం mySupplyCO సేవా నిబంధనలలో భాగం. ఈ అప్లికేషన్‌ను ఉపయోగించడం ద్వారా, మీరు ఇక్కడ రూపొందించిన మా గోప్యత ప్రాముఖ్యతకు సమ్మతి చెప్తారు.';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'ప్రభుత్వ సరఫరా నిర్వహణ వ్యవస్థ';

  @override
  String get termsIntroContent =>
      'mySupplyCO అప్లికేషన్‌ను ఉపయోగించే ముందు ఈ నిబంధనలను జాగ్రత్తగా చదవండి. ఈ అప్లికేషన్‌కు మీ ప్రవేశం మరియు ఉపయోగం ఈ నిబంధనల అంగీకారం మరియు పాలనపై ఆధారపడి ఉంటుంది.';

  @override
  String get termsUserAgreement => 'వినియోగదారు ఒప్పందం';

  @override
  String get termsUserAgreementContent =>
      'mySupplyCO అప్లికేషన్‌ను ఆక్సెస్ చేసి ఉపయోగించడం ద్వారా, మీరు ఈ నిబంధనలచే కట్టుబడి ఉండటానికి సమ్మతి చెప్తారు. ఈ అప్లికేషన్ అనుమతిచేసిన సర్కారు అధికారులు మరియు సంస్థల కోసం సరఫరా చేయిన నిర్వహణను సులభతరం చేయడానికి రూపొందించబడింది.';

  @override
  String get termsEligibility => 'యోగ్యత';

  @override
  String get termsEligibilityContent =>
      'ఈ అప్లికేషన్‌ను ఉపయోగించడానికి మీరు అనుమతిచేసిన సర్కారు అధికారి లేదా సర్కారు సంస్థ ప్రతిపాదకుడు ఉండాలి. మీరు నిబంధన సమయంలో ఖచ్చితమైన మరియు సంపూర్ణ సమాచారాన్ని అందించాలని మరియు మీ లాగిన్ ఆధారాల గోప్యతను నిర్వహించాలని సమ్మతి చెప్తారు.';

  @override
  String get termsAcceptableUse => 'ఆమోదయోగ్య ఉపయోగం';

  @override
  String get termsAcceptableUseContent =>
      'మీరు సిక్కలాక ఒప్పందం చేయకుండా: (a) అనుమతి లేని ఉద్దేశ్యల కోసం అప్లికేషన్‌ను ఉపయోగించకపోవటం, (b) సిస్టమ్‌కు అనుమతి లేని ప్రవేశాన్ని పొందటానికి ప్రయత్నం చేయకపోవటం, (c) మీ ఖాతా ఆధారాలను అనుమతి లేని వ్యక్తులతో భాగస్వామ్యం చేయకపోవటం, (d) అప్లికేషన్ ద్వారా ఏదైనా చట్టవిరుద్ధ కార్యకలాపాలు నిర్వహించకపోవటం, లేదా (e) ఏదైనా వర్తించే చట్టాలు లేదా విధిகలను ఉల్లంఘించకపోవటం.';

  @override
  String get termsUserResponsibilities => 'వినియోగదారు బాధ్యతలు';

  @override
  String get termsUserResponsibilitiesContent =>
      'మీరు పూర్తిగా బాధ్యతాధీనులు: (a) మీ ఖాతా సురక్షను నిర్వహించడం, (b) మీ ఖాతాను ఉపయోగించి నిర్వహించిన అన్ని కార్యకలాపాలు, (c) మీ సర్కారు విధానాలின కట్టుబడి నిశ్చితం చేయడం, మరియు (d) లావాదేవీలు మరియు ఆర్డర్‌ల సమయంలో ఖచ్చితమైన సమాచారాన్ని అందించడం.';

  @override
  String get termsIntellectualProperty => 'బౌద్ధిక సంపత్తి';

  @override
  String get termsIntellectualPropertyContent =>
      'mySupplyCO అప్లికేషన్ యొక్క సమస్త సామగ్రి, లక్షణాలు మరియు కార్యాచరణ సర్కారు ఏజెంసీకు చెందినవి, కాపీరైట్ మరియు ఇతర బౌద్ధిక సంపత్తి చట్టాల ద్వారా రక్షించబడ్డాయి. మీరు ముందస్తు లిఖిత సమ్మతి లేకుండా ఏదైనా సామగ్రిని పునరుత్పత్తి, పంపిణీ లేదా ప్రసారం చేయలేరు.';

  @override
  String get termsLimitationOfLiability => 'బాధ్యత యొక్క పరిమితి';

  @override
  String get termsLimitationOfLiabilityContent =>
      'mySupplyCO అప్లికేషన్ \\\"ఉందంతవలె\\\" ఆధారంపై అందించబడుతుంది. సేవ నిరంతరాయంగా లేదా లోపం లేనిదిగా ఉంటుందని మేము హామీ ఇవ్వం లేదు. చట్టం ద్వారా అనుమతించిన వరకు, మీ అప్లికేషన్ ఉపయోగం నుండి ఉత్పన్నమైన ఏదైనా పరోక్ష, ఘటన, ప్రత్యేక, లేదా పర్యవసానవ నష్టం కోసం మేము బాధ్యులు కాము.';

  @override
  String get termsDataAndInformation => 'డేటా మరియు సమాచారం';

  @override
  String get termsDataAndInformationContent =>
      'సమస్త స్టాక్ డేటా, ఆర్డర్‌లు మరియు లావాదేవీ రికార్డ్‌లు సర్కారు ఏజెంసీకు చెందినవి. మీరు ఈ సమాచారాన్ని సర్కారు విధానాలు కాకుండా ఇతర ప్రయోజనాల కోసం కాపీ, పంపిణీ లేదా ఉపయోగం చేయకుండా సమ్మతి చెప్తారు. మేము ఎలాంటి గోప్య నీతి చూడండి.';

  @override
  String get termsAccountTermination => 'ఖాతా సమాప్తి';

  @override
  String get termsAccountTerminationContent =>
      'మీరు ఈ నిబంధనలను ఉల్లంఘించినా, అనుమతి లేని ఉపయోగంలో నిమగ్నమైనా, లేదా సర్కారు నియమాలను పాటించకపోయినా, మీ ఖాతాను సస్పెండ్ లేదా సమాప్త చేసే హక్కును మరుమేరు కల్లు. సమాప్తి తక్షణ మరియు తదుపరి నోటీసు లేకుండా ఉండవచ్చు.';

  @override
  String get termsModificationsToTerms => 'నిబంధనలలో సవరణలు';

  @override
  String get termsModificationsToTermsContent =>
      'మేము ఏదైనా సమయంలో ఈ నిబంధనలను సవరించవచ్చు. సవరణలు పోస్ట్ చేయకుండా వెంటనే సమర్థవంతమవుతాయి. పోస్ట్ చేసిన తర్వాత అప్లికేషన్ యొక్క నిరంతర ఉపయోగం సవరించిన నిబంధనలను అంగీకారం చేస్తుంది.';

  @override
  String get termsGoverningLaw => 'పాలకీయ చట్టం';

  @override
  String get termsGoverningLawContent =>
      'ఈ నిబంధనలు భారతదేశ చట్టాల ద్వారా నిర్వహించబడతాయి మరియు నిర్మితమవుతాయి. ఏదైనా చట్టపరమైన చర్య లేదా విధానం సమర్థవంత న్యాయస్థానాల యొక్క అధికారానికి లోబడి ఉంటుంది.';

  @override
  String get termsFooterNote =>
      '⚠ చివరిగా నవీకరించిన: మార్చి 2026. ఈ నిబంధనలు mySupplyCO అప్లికేషన్ యొక్క సమస్త వినియోగదారులకు వర్తిస్తాయి. ఈ అప్లికేషన్‌ను ఉపయోగించడం ద్వారా, మీరు ఈ నిబంధనలను చదివినట్లు, అర్థం చేసుకున్నట్లు మరియు పాలనకు సమ్మతి చెప్తారు.';

  @override
  String get accessibilityPageTitle => 'యాక్సెస్‌విలిటీ';

  @override
  String get colourBlindFriendly => 'రంగు గుడ్డి స్నేహపూర్వక';
}
