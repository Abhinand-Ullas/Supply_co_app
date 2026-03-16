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
  String get manageAlerts => 'எச்சரிக்கைகளைப் பரிचालனை செய்க';

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
      'கணக்கு கண்டுபிடிக்கப்படவில்லை. முதலில் பதிவு செய்யவும்.';

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
  String get languageMalayalam => 'மலையாளம்';

  @override
  String get languageGujarati => 'குஜராத்தி';

  @override
  String get languageMarathi => 'மராத்தி';

  @override
  String get languageHindi => 'இந்தி';

  @override
  String get languageBengali => 'வங்காளம்';

  @override
  String get languageTamil => 'தமிழ்';

  @override
  String get languageTelugu => 'தெலுங்கு';

  @override
  String get frequentlyAskedQuestions => 'அடிக்கடி கேட்கப்படும் கேள்விகள்';

  @override
  String get needMoreHelp => 'மேலும் உதவி தேவையா?';

  @override
  String get emailSupport => 'மின்னஞ்சல் ஆதரவு';

  @override
  String get phoneSupport => 'தொலைபேசி ஆதரவு';

  @override
  String get governmentPortal => 'அரசு வலைவாசல்';

  @override
  String get supportEmail => 'support@mysupplyco.gov.in';

  @override
  String get supportPhone => '+91-1800-SUPPLY-GO';

  @override
  String get supportWebsite => 'www.mysupplyco.gov.in';

  @override
  String get faqQ1 => 'நான் எப்படி கணக்கை உருவாக்குவது?';

  @override
  String get faqA1 =>
      'mySupplyCO பயன்பாட்டைப் பதிவிறக்கி \"பதிவு செய்\" என்பதைத் தட்டவும். உங்கள் பெயர், மின்னஞ்சல் மற்றும் மொபைல் எண்ணை உள்ளிடவும். நீங்கள் ஒரு சரிபார்ப்புக் குறியீட்டைப் பெறுவீர்கள். பதிவு செய்வதை முடிக்க அதை உள்ளிடவும்.';

  @override
  String get faqQ2 => 'பங்கு இருப்பை நான் எவ்வாறு சரிபார்ப்பது?';

  @override
  String get faqA2 =>
      'உள்நுழைந்ததும், \"பங்கு\" தாவலைத் தட்டவும். உங்களுக்கு ஒதுக்கப்பட்ட விநியோக மையத்திலிருந்து நிகழ்நேர இருப்பை நீங்கள் காணலாம். குறிப்பிட்ட பொருட்களை விரைவாகக் கண்டறிய தேடல் பட்டியைப் பயன்படுத்தவும்.';

  @override
  String get faqQ3 => 'யார் ஆர்டர் செய்ய முடியும்?';

  @override
  String get faqA3 =>
      'mySupplyCO இல் பதிவு செய்யப்பட்ட அரசு அங்கீகரிக்கப்பட்ட அதிகாரிகள் ஆர்டர் செய்யலாம். உங்கள் அணுகல் நிலை உங்கள் அரசு அமைப்பு மற்றும் பங்கைச் சார்ந்தது.';

  @override
  String get faqQ4 => 'அறிவிப்புகளை நான் எவ்வாறு பெறுவது?';

  @override
  String get faqA4 =>
      'பங்கு புதுப்பிப்புகள், ஆர்டர் நிலை மற்றும் கணினி அறிவிப்புகளுக்கான அறிவிப்புகளை இயக்க/முடக்க அமைப்புகள் → எச்சரிக்கைகளை நிர்வகி என்பதற்குச் செல்லவும். புஷ் அறிவிப்புகளுக்கு பயன்பாட்டு அனுமதி தேவை.';

  @override
  String get faqQ5 => 'ஆஃப்லைன் முறை உள்ளதா?';

  @override
  String get faqA5 =>
      'ஆம்! பயன்பாடு தானாகவே சமீபத்திய பங்கு தரவை தற்காலிகமாக சேமிக்கிறது. இணைய இணைப்பு இல்லாவிட்டாலும் முன்பு ஏற்றப்பட்ட பங்கு தகவலை நீங்கள் பார்க்கலாம்.';

  @override
  String get faqQ6 => 'என் கடவுச்சொல்லை நான் எவ்வாறு மாற்றுவது?';

  @override
  String get faqA6 =>
      'உள்நுழைவுப் பக்கத்தில், \"கடவுச்சொல்லை மறந்துவிட்டீர்களா?\" என்பதைத் தட்டி உங்கள் பதிவு செய்யப்பட்ட மின்னஞ்சலை உள்ளிடவும். மின்னஞ்சல் வழியாக மீட்டமைப்பு இணைப்பைப் பெறுவீர்கள். புதிய கடவுச்சொல்லை உருவாக்க வழிமுறைகளைப் பின்பற்றவும்.';

  @override
  String get governmentSupplyManagementSystem =>
      'அரசு விநியோக மேலாண்மை அமைப்பு';

  @override
  String get pleaseReadTermsCarefully =>
      'mySupplyCO பயன்பாட்டைப் பயன்படுத்துவதற்கு முன்பு இந்த விதிமுறைகள் மற்றும் நிபந்தனைகளை கவனமாகப் படிக்கவும். இந்த பயன்பாட்டிற்கான உங்கள் அணுகல் மற்றும் பயன்பாடு இந்த விதிமுறைகளை நீங்கள் ஏற்றுக்கொள்வது மற்றும் இணங்குவதைப் பொறுத்தது.';

  @override
  String get userAgreement => 'பயனர் ஒப்பந்தம்';

  @override
  String get userAgreementContent =>
      'mySupplyCO பயன்பாட்டை அணுகுவதன் மூலமும் பயன்படுத்துவதன் மூலமும், இந்த விதிமுறைகள் மற்றும் நிபந்தனைகளுக்குக் கட்டுப்பட ஒப்புக்கொள்கிறீர்கள். இந்த பயன்பாடு அங்கீகரிக்கப்பட்ட அரசு அதிகாரிகள் மற்றும் அமைப்புகளுக்கான விநியோகச் சங்கிலி நிர்வாகத்தை எளிதாக்க வடிவமைக்கப்பட்டுள்ளது.';

  @override
  String get eligibility => 'தகுதி';

  @override
  String get eligibilityContent =>
      'இந்த பயன்பாட்டைப் பயன்படுத்த நீங்கள் அங்கீகரிக்கப்பட்ட அரசு அதிகாரியாக அல்லது அரசு அமைப்பின் பிரதிநிதியாக இருக்க வேண்டும். பதிவு செய்யும் போது துல்லியமான மற்றும் முழுமையான தகவல்களை வழங்கவும், உங்கள் உள்நுழைவு சான்றுகளின் ரகசியத்தன்மையை பராமரிக்கவும் ஒப்புக்கொள்கிறீர்கள்.';

  @override
  String get acceptableUse => 'ஏற்றுக்கொள்ளக்கூடிய பயன்பாடு';

  @override
  String get acceptableUseContent =>
      'நீங்கள் பின்வருவனவற்றைச் செய்யக்கூடாது என ஒப்புக்கொள்கிறீர்கள்: (அ) அங்கீகரிக்கப்படாத நோக்கங்களுக்காக பயன்பாட்டைப் பயன்படுத்துதல், (ஆ) கணினியில் அங்கீகரிக்கப்படாத அணுகலைப் பெற முயற்சித்தல், (இ) உங்கள் கணக்குச் சான்றுகளை அங்கீகரிக்கப்படாத நபர்களுடன் பகிர்தல், (ஈ) பயன்பாட்டின் மூலம் ஏதேனும் சட்டவிரோத நடவடிக்கைகளை மேற்கொள்ளுதல், அல்லது (உ) பொருந்தக்கூடிய சட்டங்கள் அல்லது விதிமுறைகளை மீறுதல்.';

  @override
  String get userResponsibilities => 'பயனர் பொறுப்புகள்';

  @override
  String get userResponsibilitiesContent =>
      'பின்வருவனவற்றிற்கு நீங்கள் மட்டுமே பொறுப்பாவீர்கள்: (அ) உங்கள் கணக்கின் பாதுகாப்பைப் பராமரித்தல், (ஆ) உங்கள் கணக்கைப் பயன்படுத்தி மேற்கொள்ளப்படும் அனைத்துச் செயல்பாடுகள், (இ) உங்கள் அரசாங்கத்தின் கொள்கைகளுடன் இணங்குவதை உறுதி செய்தல் மற்றும் (ஈ) பரிவர்த்தனைகள் மற்றும் ஆர்டர்களின் போது துல்லியமான தகவல்களை வழங்குதல்.';

  @override
  String get intellectualProperty => 'அறிவுசார் சொத்து';

  @override
  String get intellectualPropertyContent =>
      'mySupplyCO பயன்பாட்டின் அனைத்து உள்ளடக்கம், அம்சங்கள் மற்றும் செயல்பாடு ஆகியவை அரசு நிறுவனத்திற்குச் சொந்தமானவை, பதிப்புரிமை மற்றும் பிற அறிவுசார் சொத்துச் சட்டங்களால் பாதுகாக்கப்படுகின்றன. முன் எழுத்துப்பூர்வ அனுமதியின்றி எந்தவொரு உள்ளடக்கத்தையும் நீங்கள் இனப்பெருக்கம் செய்யவோ, விநியோகிக்கவோ அல்லது அனுப்பவோ கூடாது.';

  @override
  String get limitationOfLiability => 'பொறுப்பு வரம்பு';

  @override
  String get limitationOfLiabilityContent =>
      'mySupplyCO பயன்பாடு \"உள்ளபடியே\" அடிப்படையில் வழங்கப்படுகிறது. சேவை தடையின்றி அல்லது பிழையின்றி இருக்கும் என்று நாங்கள் உத்தரவாதம் அளிக்கவில்லை. சட்டத்தால் அனுமதிக்கப்பட்ட அதிகபட்ச அளவிற்கு, பயன்பாட்டை நீங்கள் பயன்படுத்துவதால் ஏற்படும் மறைமுக, தற்செயலான, சிறப்பு அல்லது அதன் விளைவான சேதங்களுக்கு நாங்கள் பொறுப்பல்ல.';

  @override
  String get dataAndInformation => 'தரவு மற்றும் தகவல்';

  @override
  String get dataAndInformationContent =>
      'அனைத்து பங்கு தரவுகள், ஆர்டர்கள் மற்றும் பரிவர்த்தனை பதிவுகள் அரசு நிறுவனத்தின் சொத்து. அதிகாரப்பூர்வ அரசாங்க செயல்பாடுகளைத் தவிர வேறு நோக்கங்களுக்காக இந்த தகவலை நகலெடுக்கவோ, விநியோகிக்கவோ அல்லது பயன்படுத்தவோ கூடாது என ஒப்புக்கொள்கிறீர்கள். தனிப்பட்ட தரவை நாங்கள் எவ்வாறு கையாளுகிறோம் என்பது பற்றிய விவரங்களுக்கு எங்கள் தனியுரிமைக் கொள்கையைப் பார்க்கவும்.';

  @override
  String get accountTermination => 'கணக்கு முடிவு';

  @override
  String get accountTerminationContent =>
      'இந்த விதிமுறைகளை நீங்கள் மீறினாலோ, அங்கீகரிக்கப்படாத பயன்பாட்டில் ஈடுபட்டாலோ அல்லது அரசாங்க விதிமுறைகளுக்கு இணங்கத் தவறினாலோ உங்கள் கணக்கை இடைநிறுத்தவோ அல்லது நிறுத்தவோ எங்களுக்கு உரிமை உள்ளது. எந்தவொரு முன்னறிவிப்புமின்றியும் கணக்கு உடனடியாக நிறுத்தப்படலாம்.';

  @override
  String get modificationsToTerms => 'விதிமுறைகளில் மாற்றங்கள்';

  @override
  String get modificationsToTermsContent =>
      'இந்த விதிமுறைகள் மற்றும் நிபந்தனைகளை நாங்கள் எந்த நேரத்திலும் மாற்றலாம். இடுகையிட்டவுடன் மாற்றங்கள் உடனடியாக அமலுக்கு வரும். ஏதேனும் மாற்றங்களைத் தொடர்ந்து பயன்பாட்டைப் பயன்படுத்தினால், புதுப்பிக்கப்பட்ட விதிமுறைகளை நீங்கள் ஏற்றுக்கொள்கிறீர்கள் என்று அர்த்தம்.';

  @override
  String get governingLaw => 'ஆளும் சட்டம்';

  @override
  String get governingLawContent =>
      'இந்த விதிமுறைகள் மற்றும் நிபந்தனைகள் இந்தியாவின் சட்டங்களுக்கு உட்பட்டு நிர்வகிக்கப்படுகின்றன. எந்தவொரு சட்ட நடவடிக்கை அல்லது செயல்முறையும் பொருத்தமான நீதிமன்றங்களின் அதிகார வரம்பிற்கு உட்பட்டதாக இருக்கும்.';

  @override
  String get lastUpdatedTerms =>
      '⚠ கடைசியாகப் புதுப்பிக்கப்பட்டது: மார்ச் 2026. இந்த விதிமுறைகள் மற்றும் நிபந்தனைகள் mySupplyCO பயன்பாட்டின் அனைத்து பயனர்களுக்கும் பொருந்தும். இந்த பயன்பாட்டைப் பயன்படுத்துவதன் மூலம், இந்த விதிமுறைகளை நீங்கள் படித்து, புரிந்துகொண்டு, அவற்றுக்குக் கட்டுப்பட ஒப்புக்கொள்கிறீர்கள் என்பதை உறுதிப்படுத்துகிறீர்கள்.';

  @override
  String get yourPrivacyIsProtected => 'உங்கள் தனியுரிமை பாதுகாக்கப்படுகிறது';

  @override
  String get privacyDescription =>
      'நாங்கள் 3 தகவல்களை மட்டுமே சேகரிக்கிறோம்: உங்கள் பெயர், மின்னஞ்சல் மற்றும் மொபைல் எண். உங்கள் தரவை நாங்கள் ஒருபோதும் பகிரவோ, விற்கவோ அல்லது தவறாகப் பயன்படுத்தவோ மாட்டோம். உங்கள் தகவல் அரசு விநியோகச் சங்கிலி செயல்பாடுகளுக்கு மட்டுமே பயன்படுத்தப்படும்.';

  @override
  String get dataCollection => 'தரவு சேகரிப்பு';

  @override
  String get dataCollectionContent =>
      'பதிவு செய்யும் போதும் பயன்படுத்தும் போதும் mySupplyCO உங்களிடமிருந்து பின்வரும் தனிப்பட்ட தகவல்களை மட்டுமே சேகரித்து சேமிக்கிறது:';

  @override
  String get fullName => 'உங்கள் முழு பெயர்';

  @override
  String get emailAddress => 'உங்கள் மின்னஞ்சல் முகவரி';

  @override
  String get mobileNumber => 'உங்கள் மொபைல் எண்';

  @override
  String get dataUsage => 'தரவு பயன்பாடு';

  @override
  String get dataUsageContent =>
      'உங்கள் தனிப்பட்ட தரவு பின்வருவனவற்றிற்கு மட்டுமே பயன்படுத்தப்படுகிறது:';

  @override
  String get accountAuthentication => 'கணக்கு அங்கீகாரம் மற்றும் உள்நுழைவு';

  @override
  String get orderConfirmations =>
      'ஆர்டர் உறுதிப்படுத்தல்கள் மற்றும் புதுப்பிப்புகளை அனுப்புதல்';

  @override
  String get customerSupport => 'வாடிக்கையாளர் ஆதரவை வழங்குதல்';

  @override
  String get stockNotifications =>
      'பங்கு மாற்றங்கள் மற்றும் கணினி எச்சரிக்கைகளை உங்களுக்குத் தெரிவித்தல்';

  @override
  String get governmentFunctions =>
      'அரசு விநியோகச் சங்கிலி மேலாண்மை செயல்பாடுகளை நிறைவேற்றுதல்';

  @override
  String get whatWeDoNotDo => 'நாங்கள் செய்யாதவை';

  @override
  String get doNotSellData =>
      'உங்கள் தனிப்பட்ட தரவை நாங்கள் விற்கவோ, பகிரவோ அல்லது வர்த்தகம் செய்யவோ மாட்டோம்';

  @override
  String get doNotMarketData =>
      'சந்தைப்படுத்தல் அல்லது விளம்பரத்திற்காக உங்கள் தரவை நாங்கள் பயன்படுத்த மாட்டோம்';

  @override
  String get doNotShareThirdParty =>
      'உங்கள் தரவை மூன்றாம் தரப்பு நிறுவனங்களுடன் நாங்கள் பகிர மாட்டோம்';

  @override
  String get doNotUseOutsideGov =>
      'அரசு விநியோக செயல்பாடுகளுக்கு வெளியேயான நோக்கங்களுக்காக உங்கள் தரவை நாங்கள் பயன்படுத்த மாட்டோம்';

  @override
  String get doNotCombineData =>
      'உங்கள் தரவை வெளிப்புற ஆதாரங்களுடன் நாங்கள் இணைக்க மாட்டோம்';

  @override
  String get dataSecurity => 'தரவு பாதுகாப்பு';

  @override
  String get dataSecurityContent =>
      'உங்கள் தனிப்பட்ட தகவல்களைப் பாதுகாக்க தொழில்-தரமான பாதுகாப்பு நடவடிக்கைகளை நாங்கள் செயல்படுத்துகிறோம்:';

  @override
  String get encryptedTransmission =>
      'மறைகுறியாக்கப்பட்ட தரவு பரிமாற்றம் (SSL/TLS)';

  @override
  String get secureServers => 'பாதுகாப்பான சேவையக உள்கட்டமைப்பு';

  @override
  String get limitedAccess =>
      'தனிப்பட்ட தரவுக்கான வரையறுக்கப்பட்ட அணுகல் (அங்கீகரிக்கப்பட்ட பணியாளர்கள் மட்டுமே)';

  @override
  String get securityAudits =>
      'வழக்கமான பாதுகாப்பு தணிக்கைகள் மற்றும் புதுப்பிப்புகள்';

  @override
  String get governmentCompliance =>
      'அரசு தரவு பாதுகாப்பு தரங்களுடன் இணங்குதல்';

  @override
  String get yourRights => 'உங்கள் உரிமைகள்';

  @override
  String get yourRightsContent => 'உங்களுக்கு பின்வரும் உரிமைகள் உள்ளன:';

  @override
  String get accessData => 'எந்த நேரத்திலும் உங்கள் தனிப்பட்ட தரவை அணுகலாம்';

  @override
  String get correctData => 'தவறான தகவல்களை திருத்தக் கோரலாம்';

  @override
  String get deleteAccount => 'உங்கள் கணக்கு மற்றும் தரவை நீக்கக் கோரலாம்';

  @override
  String get obtainCopy => 'உங்கள் தனிப்பட்ட தகவலின் நகலைப் பெறலாம்';

  @override
  String get withdrawConsent =>
      'தரவு பயன்பாட்டிற்கான சம்மதத்தை திரும்பப் பெறலாம்';

  @override
  String get dataRetention => 'தரவு வைத்திருத்தல்';

  @override
  String get dataRetentionContent =>
      'உங்கள் தனிப்பட்ட தரவு அரசு விநியோக மேலாண்மை செயல்பாடுகளுக்குத் தேவையான வரை மட்டுமே வைக்கப்படும். கணக்கை நீக்கியவுடன், சட்டப்படி தேவைப்படும் இடங்களைத் தவிர, 30 நாட்களுக்குள் உங்கள் தரவு எங்கள் அமைப்புகளிலிருந்து நிரந்தரமாக அகற்றப்படும்.';

  @override
  String get changesToPrivacyPolicy => 'தனியுரிமைக் கொள்கையில் மாற்றங்கள்';

  @override
  String get changesToPrivacyPolicyContent =>
      'நாங்கள் அவ்வப்போது இந்த தனியுரிமைக் கொள்கையைப் புதுப்பிக்கலாம். ஏதேனும் குறிப்பிடத்தக்க மாற்றங்கள் இருந்தால் மின்னஞ்சல் அல்லது பயன்பாட்டின் மூலம் பயனர்களுக்குத் தெரிவிப்போம். mySupplyCO ஐ நீங்கள் தொடர்ந்து பயன்படுத்துவது புதுப்பிக்கப்பட்ட கொள்கையை ஏற்றுக்கொள்வதைக் குறிக்கிறது.';

  @override
  String get contactUsPrivacy => 'எங்களை தொடர்பு கொள்ள';

  @override
  String get contactUsPrivacyContent =>
      'இந்த தனியுரிமைக் கொள்கை அல்லது உங்கள் தனிப்பட்ட தரவு பற்றி உங்களுக்கு கேள்விகள் இருந்தால், தயவுசெய்து எங்களை தொடர்பு கொள்ளவும்:';

  @override
  String get privacyEmail => 'மின்னஞ்சல்: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'தொலைபேசி: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'வலைவாசல்: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 கடைசியாகப் புதுப்பிக்கப்பட்டது: மார்ச் 2026. இந்த தனியுரிமைக் கொள்கை mySupplyCO சேவை விதிமுறைகளின் ஒரு பகுதியாகும். இந்த பயன்பாட்டைப் பயன்படுத்துவதன் மூலம், இங்கு விவரிக்கப்பட்டுள்ள எங்கள் தனியுரிமை நடைமுறைகளுக்கு நீங்கள் சம்மதிக்கிறீர்கள்.';

  @override
  String get privacyPolicyPageTitle => 'தனியுரிமைக் கொள்கை';

  @override
  String get termsConditionsPageTitle => 'விதிமுறைகள் மற்றும் நிபந்தனைகள்';

  @override
  String get helpSupportPageTitle => 'உதவி மற்றும் ஆதரவு';

  @override
  String get helpFaqCreateAccount => 'நான் எப்படி கணக்கை உருவாக்குவது?';

  @override
  String get helpFaqCreateAccountAns =>
      'MySupplyCo பயன்பாட்டைப் பதிவிறக்கி \"பதிவு செய்\" என்பதைத் தட்டவும். உங்கள் பெயரை உள்ளிடவும், நீங்கள் உங்கள் Google கணக்கைப் பயன்படுத்தலாம் அல்லது மொபைல் எண்ணைப் பயன்படுத்தி உள்நுழையலாம். நீங்கள் மொபைல் எண்ணைப் பயன்படுத்தினால், OTP சரிபார்ப்பு தேவை.';

  @override
  String get helpFaqCheckStock => 'பங்கு இருப்பை நான் எவ்வாறு சரிபார்ப்பது?';

  @override
  String get helpFaqCheckStockAns =>
      'உள்நுழைந்ததும், \"பங்கு\" தாவலைத் தட்டவும். உங்களுக்கு ஒதுக்கப்பட்ட விநியோக மையத்திலிருந்து நிகழ்நேர இருப்பை நீங்கள் காணலாம். குறிப்பிட்ட பொருட்களை விரைவாகக் கண்டறிய தேடல் பட்டியைப் பயன்படுத்தவும்.';

  @override
  String get helpFaqNotifications => 'அறிவிப்புகளை நான் எவ்வாறு பெறுவது?';

  @override
  String get helpFaqNotificationsAns =>
      'பங்கு புதுப்பிப்புகள் மற்றும் கணினி அறிவிப்புகளுக்கான அறிவிப்புகளை இயக்க/முடக்க அமைப்புகள் → எச்சரிக்கைகளை நிர்வகி என்பதற்குச் செல்லவும். புஷ் அறிவிப்புகளுக்கு பயன்பாட்டு அனுமதி தேவை.';

  @override
  String get helpFaqOfflineMode => 'ஆஃப்லைன் முறை உள்ளதா?';

  @override
  String get helpFaqOfflineModeAns =>
      'ஆம்! பயன்பாடு தானாகவே சமீபத்திய பங்கு தரவை தற்காலிகமாக சேமிக்கிறது. இணைய இணைப்பு இல்லாவிட்டாலும் முன்பு ஏற்றப்பட்ட பங்கு தகவலை நீங்கள் பார்க்கலாம்.';

  @override
  String get governmentPortalText => 'அரசு வலைவாசல்';

  @override
  String get privacyDataCollection => 'தரவு சேகரிப்பு';

  @override
  String get privacyDataCollectionContent =>
      'பதிவு செய்யும் போதும் பயன்படுத்தும் போதும் MySupplyCo உங்களிடமிருந்து பின்வரும் தனிப்பட்ட தகவல்களை மட்டுமே சேகரித்து சேமிக்கிறது:';

  @override
  String get privacyFullName => 'உங்கள் முழு பெயர்';

  @override
  String get privacyEmailAddress => 'உங்கள் மின்னஞ்சல் முகவரி';

  @override
  String get privacyMobileNumber => 'உங்கள் மொபைல் எண்';

  @override
  String get privacyDataUsage => 'தரவு பயன்பாடு';

  @override
  String get privacyDataUsageContent =>
      'உங்கள் தனிப்பட்ட தரவு பின்வருவனவற்றிற்கு மட்டுமே பயன்படுத்தப்படுகிறது:';

  @override
  String get privacyAccountAuthentication =>
      'கணக்கு அங்கீகாரம் மற்றும் உள்நுழைவு';

  @override
  String get privacyCustomerSupport => 'வாடிக்கையாளர் ஆதரவை வழங்குதல்';

  @override
  String get privacyStockNotifications =>
      'பங்கு மாற்றங்கள் மற்றும் கணினி எச்சரிக்கைகளை உங்களுக்குத் தெரிவித்தல்';

  @override
  String get privacyWhatWeDoNotDo => 'நாங்கள் செய்யாதவை';

  @override
  String get privacyDoNotSell =>
      'உங்கள் தனிப்பட்ட தரவை நாங்கள் விற்கவோ, பகிரவோ அல்லது வர்த்தகம் செய்யவோ மாட்டோம்';

  @override
  String get privacyDoNotMarket =>
      'சந்தைப்படுத்தல் அல்லது விளம்பரத்திற்காக உங்கள் தரவை நாங்கள் பயன்படுத்த மாட்டோம்';

  @override
  String get privacyDoNotShareThirdParty =>
      'உங்கள் தரவை மூன்றாம் தரப்பு நிறுவனங்களுடன் நாங்கள் பகிர மாட்டோம்';

  @override
  String get privacyDoNotUseOutsideGov =>
      'அரசு விநியோக செயல்பாடுகளுக்கு வெளியேயான நோக்கங்களுக்காக உங்கள் தரவை நாங்கள் பயன்படுத்த மாட்டோம்';

  @override
  String get privacyDoNotCombineData =>
      'உங்கள் தரவை வெளிப்புற ஆதாரங்களுடன் நாங்கள் இணைக்க மாட்டோம்';

  @override
  String get privacyDataSecurity => 'தரவு பாதுகாப்பு';

  @override
  String get privacyDataSecurityContent =>
      'உங்கள் தனிப்பட்ட தகவல்களைப் பாதுகாக்க தொழில்-தரமான பாதுகாப்பு நடவடிக்கைகளை நாங்கள் செயல்படுத்துகிறோம்:';

  @override
  String get privacySecureServers => 'பாதுகாப்பான சேவையக உள்கட்டமைப்பு';

  @override
  String get privacyLimitedAccess =>
      'தனிப்பட்ட தரவுக்கான வரையறுக்கப்பட்ட அணுகல் (அங்கீகரிக்கப்பட்ட பணியாளர்கள் மட்டுமே)';

  @override
  String get privacySecurityAudits =>
      'வழக்கமான பாதுகாப்பு தணிக்கைகள் மற்றும் புதுப்பிப்புகள்';

  @override
  String get privacyGovernmentCompliance =>
      'அரசு தரவு பாதுகாப்பு தரங்களுடன் இணங்குதல்';

  @override
  String get privacyYourRights => 'உங்கள் உரிமைகள்';

  @override
  String get privacyYourRightsContent => 'உங்களுக்கு பின்வரும் உரிமைகள் உள்ளன:';

  @override
  String get privacyAccessData =>
      'எந்த நேரத்திலும் உங்கள் தனிப்பட்ட தரவை அணுகலாம்';

  @override
  String get privacyCorrectData => 'தவறான தகவல்களை திருத்தக் கோரலாம்';

  @override
  String get privacyDeleteAccount =>
      'உங்கள் கணக்கு மற்றும் தரவை நீக்கக் கோரலாம்';

  @override
  String get privacyWithdrawConsent =>
      'தரவு பயன்பாட்டிற்கான சம்மதத்தை திரும்பப் பெறலாம்';

  @override
  String get privacyDataRetention => 'தரவு வைத்திருத்தல்';

  @override
  String get privacyDataRetentionContent =>
      'உங்கள் தனிப்பட்ட தரவு அரசு விநியோக மேலாண்மை செயல்பாடுகளுக்குத் தேவையான வரை மட்டுமே வைக்கப்படும். கணக்கை நீக்கியவுடன், சட்டப்படி தேவைப்படும் இடங்களைத் தவிர, 30 நாட்களுக்குள் உங்கள் தரவு எங்கள் அமைப்புகளிலிருந்து நிரந்தரமாக அகற்றப்படும்.';

  @override
  String get privacyChangesToPolicy => 'தனியுரிமைக் கொள்கையில் மாற்றங்கள்';

  @override
  String get privacyChangesToPolicyContent =>
      'நாங்கள் அவ்வப்போது இந்த தனியுரிமைக் கொள்கையைப் புதுப்பிக்கலாம். ஏதேனும் குறிப்பிடத்தக்க மாற்றங்கள் இருந்தால் மின்னஞ்சல் அல்லது பயன்பாட்டின் மூலம் பயனர்களுக்குத் தெரிவிப்போம். MySupplyCo ஐ நீங்கள் தொடர்ந்து பயன்படுத்துவது புதுப்பிக்கப்பட்ட கொள்கையை ஏற்றுக்கொள்வதைக் குறிக்கிறது.';

  @override
  String get privacyProtectedTitle => 'உங்கள் தனியுரிமை பாதுகாக்கப்படுகிறது';

  @override
  String get privacyProtectedDescription =>
      'நாங்கள் 3 தகவல்களை மட்டுமே சேகரிக்கிறோம்: உங்கள் பெயர், மின்னஞ்சல் மற்றும் மொபைல் எண். உங்கள் தரவை நாங்கள் ஒருபோதும் பகிரவோ, விற்கவோ அல்லது தவறாகப் பயன்படுத்தவோ மாட்டோம். உங்கள் தகவல் அரசு விநியோகச் சங்கிலி செயல்பாடுகளுக்கு மட்டுமே பயன்படுத்தப்படும்.';

  @override
  String get privacyFooterNote =>
      '📋 கடைசியாகப் புதுப்பிக்கப்பட்டது: மார்ச் 2026. இந்த தனியுரிமைக் கொள்கை MySupplyCo சேவை விதிமுறைகளின் ஒரு பகுதியாகும். இந்த பயன்பாட்டைப் பயன்படுத்துவதன் மூலம், இங்கு விவரிக்கப்பட்டுள்ள எங்கள் தனியுரிமை நடைமுறைகளுக்கு நீங்கள் சம்மதிக்கிறீர்கள்.';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'அரசு விநியோக மேலாண்மை அமைப்பு';

  @override
  String get termsIntroContent =>
      'MySupplyCo பயன்பாட்டைப் பயன்படுத்துவதற்கு முன்பு இந்த விதிமுறைகள் மற்றும் நிபந்தனைகளை கவனமாகப் படிக்கவும். இந்த பயன்பாட்டிற்கான உங்கள் அணுகல் மற்றும் பயன்பாடு இந்த விதிமுறைகளை நீங்கள் ஏற்றுக்கொள்வது மற்றும் இணங்குவதைப் பொறுத்தது.';

  @override
  String get termsUserAgreement => 'பயனர் ஒப்பந்தம்';

  @override
  String get termsUserAgreementContent =>
      'MySupplyCo பயன்பாட்டை அணுகுவதன் மூலமும் பயன்படுத்துவதன் மூலமும், இந்த விதிமுறைகள் மற்றும் நிபந்தனைகளுக்குக் கட்டுப்பட ஒப்புக்கொள்கிறீர்கள். இந்த பயன்பாடு அங்கீகரிக்கப்பட்ட அரசு அதிகாரிகள் மற்றும் அமைப்புகளுக்கான விநியோகச் சங்கிலி நிர்வாகத்தை எளிதாக்க வடிவமைக்கப்பட்டுள்ளது.';

  @override
  String get termsEligibility => 'தகுதி';

  @override
  String get termsEligibilityContent =>
      'இந்த பயன்பாட்டைப் பயன்படுத்த நீங்கள் அங்கீகரிக்கப்பட்ட குடிமகனாக இருக்க வேண்டும். பதிவு செய்யும் போது துல்லியமான மற்றும் முழுமையான தகவல்களை வழங்கவும், உங்கள் உள்நுழைவு சான்றுகளின் ரகசியத்தன்மையை பராமரிக்கவும் ஒப்புக்கொள்கிறீர்கள்.';

  @override
  String get termsAcceptableUse => 'ஏற்றுக்கொள்ளக்கூடிய பயன்பாடு';

  @override
  String get termsAcceptableUseContent =>
      'நீங்கள் பின்வருவனவற்றைச் செய்யக்கூடாது என ஒப்புக்கொள்கிறீர்கள்: (அ) அங்கீகரிக்கப்படாத நோக்கங்களுக்காக பயன்பாட்டைப் பயன்படுத்துதல், (ஆ) கணினியில் அங்கீகரிக்கப்படாத அணுகலைப் பெற முயற்சித்தல், (இ) உங்கள் கணக்குச் சான்றுகளை அங்கீகரிக்கப்படாத நபர்களுடன் பகிர்தல், (ஈ) பயன்பாட்டின் மூலம் ஏதேனும் சட்டவிரோத நடவடிக்கைகளை மேற்கொள்ளுதல், அல்லது (உ) பொருந்தக்கூடிய சட்டங்கள் அல்லது விதிமுறைகளை மீறுதல்.';

  @override
  String get termsUserResponsibilities => 'பயனர் பொறுப்புகள்';

  @override
  String get termsUserResponsibilitiesContent =>
      'பின்வருவனவற்றிற்கு நீங்கள் மட்டுமே பொறுப்பாவீர்கள்: (அ) உங்கள் கணக்கின் பாதுகாப்பைப் பராமரித்தல், (ஆ) உங்கள் கணக்கைப் பயன்படுத்தி மேற்கொள்ளப்படும் அனைத்துச் செயல்பாடுகள், (இ) உங்கள் அரசாங்கத்தின் கொள்கைகளுடன் இணங்குவதை உறுதி செய்தல் மற்றும் (ஈ) பரிவர்த்தனைகள் மற்றும் ஆர்டர்களின் போது துல்லியமான தகவல்களை வழங்குதல்.';

  @override
  String get termsIntellectualProperty => 'அறிவுசார் சொத்து';

  @override
  String get termsIntellectualPropertyContent =>
      'MySupplyCo பயன்பாட்டின் அனைத்து உள்ளடக்கம், அம்சங்கள் மற்றும் செயல்பாடு ஆகியவை அரசு நிறுவனத்திற்குச் சொந்தமானவை, பதிப்புரிமை மற்றும் பிற அறிவுசார் சொத்துச் சட்டங்களால் பாதுகாக்கப்படுகின்றன. முன் எழுத்துப்பூர்வ அனுமதியின்றி எந்தவொரு உள்ளடக்கத்தையும் நீங்கள் இனப்பெருக்கம் செய்யவோ, விநியோகிக்கவோ அல்லது அனுப்பவோ கூடாது.';

  @override
  String get termsLimitationOfLiability => 'பொறுப்பு வரம்பு';

  @override
  String get termsLimitationOfLiabilityContent =>
      'MySupplyCo பயன்பாடு \"உள்ளபடியே\" அடிப்படையில் வழங்கப்படுகிறது. சேவை தடையின்றி அல்லது பிழையின்றி இருக்கும் என்று நாங்கள் உத்தரவாதம் அளிக்கவில்லை. சட்டத்தால் அனுமதிக்கப்பட்ட அதிகபட்ச அளவிற்கு, பயன்பாட்டை நீங்கள் பயன்படுத்துவதால் ஏற்படும் மறைமுக, தற்செயலான, சிறப்பு அல்லது அதன் விளைவான சேதங்களுக்கு நாங்கள் பொறுப்பல்ல.';

  @override
  String get termsDataAndInformation => 'தரவு மற்றும் தகவல்';

  @override
  String get termsDataAndInformationContent =>
      'அனைத்து பங்கு தரவுகள் மற்றும் பரிவர்த்தனை பதிவுகள் அரசு நிறுவனத்தின் சொத்து. அதிகாரப்பூர்வ அரசாங்க செயல்பாடுகளைத் தவிர வேறு நோக்கங்களுக்காக இந்த தகவலை நகலெடுக்கவோ, விநியோகிக்கவோ அல்லது பயன்படுத்தவோ கூடாது என ஒப்புக்கொள்கிறீர்கள். தனிப்பட்ட தரவை நாங்கள் எவ்வாறு கையாளுகிறோம் என்பது பற்றிய விவரங்களுக்கு எங்கள் தனியுரிமைக் கொள்கையைப் பார்க்கவும்.';

  @override
  String get termsAccountTermination => 'கணக்கு முடிவு';

  @override
  String get termsAccountTerminationContent =>
      'இந்த விதிமுறைகளை நீங்கள் மீறினாலோ, அங்கீகரிக்கப்படாத பயன்பாட்டில் ஈடுபட்டாலோ அல்லது அரசாங்க விதிமுறைகளுக்கு இணங்கத் தவறினாலோ உங்கள் கணக்கை இடைநிறுத்தவோ அல்லது நிறுத்தவோ எங்களுக்கு உரிமை உள்ளது. எந்தவொரு முன்னறிவிப்புமின்றியும் கணக்கு உடனடியாக நிறுத்தப்படலாம்.';

  @override
  String get termsModificationsToTerms => 'விதிமுறைகளில் மாற்றங்கள்';

  @override
  String get termsModificationsToTermsContent =>
      'இந்த விதிமுறைகள் மற்றும் நிபந்தனைகளை நாங்கள் எந்த நேரத்திலும் மாற்றலாம். இடுகையிட்டவுடன் மாற்றங்கள் உடனடியாக அமலுக்கு வரும். ஏதேனும் மாற்றங்களைத் தொடர்ந்து பயன்பாட்டைப் பயன்படுத்தினால், புதுப்பிக்கப்பட்ட விதிமுறைகளை நீங்கள் ஏற்றுக்கொள்கிறீர்கள் என்று அர்த்தம்.';

  @override
  String get termsGoverningLaw => 'ஆளும் சட்டம்';

  @override
  String get termsGoverningLawContent =>
      'இந்த விதிமுறைகள் மற்றும் நிபந்தனைகள் இந்தியாவின் சட்டங்களுக்கு உட்பட்டு நிர்வகிக்கப்படுகின்றன. எந்தவொரு சட்ட நடவடிக்கை அல்லது செயல்முறையும் பொருத்தமான நீதிமன்றங்களின் அதிகார வரம்பிற்கு உட்பட்டதாக இருக்கும்.';

  @override
  String get termsFooterNote =>
      '⚠ கடைசியாகப் புதுப்பிக்கப்பட்டது: மார்ச் 2026. இந்த விதிமுறைகள் மற்றும் நிபந்தனைகள் MySupplyCo பயன்பாட்டின் அனைத்து பயனர்களுக்கும் பொருந்தும். இந்த பயன்பாட்டைப் பயன்படுத்துவதன் மூலம், இந்த விதிமுறைகளை நீங்கள் படித்து, புரிந்துகொண்டு, அவற்றுக்குக் கட்டுப்பட ஒப்புக்கொள்கிறீர்கள் என்பதை உறுதிப்படுத்துகிறீர்கள்.';
}
