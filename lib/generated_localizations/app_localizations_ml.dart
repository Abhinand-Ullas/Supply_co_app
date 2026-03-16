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
  String get privacyPolicy => 'സ്വകാര്യത നയം';

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
  String get languageMarathi => 'മരാഠി';

  @override
  String get languageHindi => 'हिन्दी';

  @override
  String get languageBengali => 'বাংলা';

  @override
  String get languageTamil => 'தமிழ்';

  @override
  String get languageTelugu => 'తెలుగు';

  @override
  String get frequentlyAskedQuestions => 'പതിവായി ചോദിക്കുന്ന ചോദ്യങ്ങൾ';

  @override
  String get needMoreHelp => 'കൂടുതൽ സഹായം വേണോ?';

  @override
  String get emailSupport => 'ഇമെയിൽ പിന്തുണ';

  @override
  String get phoneSupport => 'ഫോൺ പിന്തുണ';

  @override
  String get governmentPortal => 'സർക്കാർ പോർട്ടൽ';

  @override
  String get supportEmail => 'support@mysupplyco.gov.in';

  @override
  String get supportPhone => '+91-1800-SUPPLY-GO';

  @override
  String get supportWebsite => 'www.mysupplyco.gov.in';

  @override
  String get faqQ1 => 'എന്നെങ്കിലും ഒരു അക്കൗണ്ട് എങ്ങനെ സൃഷ്ടിക്കാം?';

  @override
  String get faqA1 =>
      'mySupplyCO ആപ്പ് ഡൗൺലോഡ് ചെയ്ത് \"സൈൻ അപ്പ്\" നൊക്കുക. നിങ്ങളുടെ പേര്, ഇമെയിൽ, മൊബൈൽ നമ്പർ നൽകുക. നിങ്ങൾ ഒരു സ്ഥിരീകരണ കോഡ് ലഭിക്കും. അത് നൽകി പോരിര്യത്നം പൂർത്തിയാക്കുക.';

  @override
  String get faqQ2 => 'സ്റ്റോക്കിന്റെ ലഭ്യത എന്ന് പരിശോധിക്കാം?';

  @override
  String get faqA2 =>
      'ലോഗിൻ ചെയ്ത ശേഷം, \"സ്റ്റോക്ക്\" ടാബിൽ നൊക്കുക. നിങ്ങളുടെ നിയോഗിത സാധന കേന്ദ്രത്തിൽ നിന്നുള്ള തത്സമയ ലഭ്യത കാണാൻ കഴിയും. നിർദ്ദിഷ്ട ഇനങ്ങൾ കണ്ടെത്താൻ തിരയൽ ബാർ ഉപയോഗിക്കുക.';

  @override
  String get faqQ3 => 'ആര് ഓര്‍ഡര്‍ നീക്കാന്‍ കഴിയും?';

  @override
  String get faqA3 =>
      'mySupplyCO ൈയിയ്റ്റ് രജിസ്റ്റർ ചെയ്ത സർക്കാരാണ് അധികാരികൾ ഓര്‍ഡര്‍ നീക്കാന്‍ കഴിയും. നിങ്ങളുടെ പ്രവേശന തലം നിങ്ങളുടെ സർക്കാരാണ് സംഘടനയുടെ റോളിനെ ആശ്രയിച്ചിരിക്കുന്നു.';

  @override
  String get faqQ4 => 'എനിക്ക് അറിയിപ്പ് എങ്ങനെ കിട്ടും?';

  @override
  String get faqA4 =>
      'സെറ്റിങ്ങുകൾ → അലേർട്ടുകൾ നിയന്ത്രിക്കുക എന്നതിലേക്ക് പോകുക സ്റ്റോക്ക് അപ്ഡേറ്റ്, ഓര്‍ഡര്‍ അവസ്ഥ, സിസ്റ്റം സമ്പ്രേക്ഷണ നിയന്ത്രിക്കാന്‍.';

  @override
  String get faqQ5 => 'ഓഫലൈന്‍ എന്നാണ്?';

  @override
  String get faqA5 =>
      'അതെ! ആപ്പ് സ്വയമേവ സാധന വിവരം കാഷ് ചെയ്യുന്നു. നിങ്ങൾ ഇന്റർനെറ്റ് കണക്ഷന് കൃത്യമായി സാധന വിവരം കാണാൻ കഴിയും.';

  @override
  String get faqQ6 => 'ആ പാസ്വര്‍ഡ് എങ്ങനെ പുനഃസ്ഥാപിക്കാം?';

  @override
  String get faqA6 =>
      'ലോഗിന്‍ പേജിൽ, \"പാസ്വര്‍ഡ് മറന്നുപോയോ?\" നൊക്കി നിങ്ങളുടെ ലിപിബദ്ധ ഇമെയിലിസ് നൽകുക. നിങ്ങൾ ഇമെയിൽ ഉപയോഗിച്ച് പുനഃസ്ഥാപന കണ്ണി അറിയിക്കും. പുതിയ പാസ്വര്‍ഡ് സൃഷ്ടിക്കാൻ നിര്‍ദ്ദേശങ്ങൾ പാലിക്കുക.';

  @override
  String get governmentSupplyManagementSystem =>
      'സർക്കാരാണ് സാധന നിയന്ത്രണ നിരാകരണം';

  @override
  String get pleaseReadTermsCarefully =>
      'از mySupplyCO എപ്പ്ലിക്കേഷനെ ഉപയോഗിക്കുമ്പോള് കൃപ്പ് ഈ നിബന്ധനകൾ സൂക്ഷ്മമായി വായിച്ചു്. ഈ പ്രയോജനത്തിമായ പ്രവേശനമാണ് ഉപയോഗ ഈ നിബന്ധനകളുടെ സ്വീകാര്യത സഹായകരിയത് പരിഗണകരി് ഭരിക്കപ്പെടുന്നതിരിക്കുന്നു.';

  @override
  String get userAgreement => 'ഉപയോഗകാരി കരാറ്';

  @override
  String get userAgreementContent =>
      'mySupplyCO അപ്ലിക്കേഷൻ ആക്സസ് ചെയ്ത് ഉപയോഗിക്കുന്നതിലൂടെ, നിങ്ങൾ ഈ നിബന്ധനകൾക്കും വ്യവസ്ഥകൾക്കും കെട്ടിയിരിക്കാൻ സമ്മതിക്കുന്നു. ഈ അപ്ലിക്കേഷൻ അധികൃത സർക്കാരാണ് ഓഫീസറുകൾക്കും സംഘടനകൾക്കും സാധന ശൃംഖല നിയന്ത്രണം സൗകര്യപ്പെടുത്താൻ രൂപകൽപ്പനയാണ്.';

  @override
  String get eligibility => 'യോഗ്യത';

  @override
  String get eligibilityContent =>
      'ഈ അപ്ലിക്കേഷൻ ഉപയോഗിക്കാൻ നിങ്ങൾ അധികൃത സർക്കാരാണ് ഓഫീസർ അല്ലെങ്കിൽ സർക്കാരാണ് സംഘടന പ്രതിനിധി ആണേണ്ടത്. പോരിര്യത്നത്തിന്‍ സമയത്ത് നിങ്ങൾ കൃത്യമായ സമ്പൂർണ്ണ വിവരം നലകാൻ ആയ്കാരേ കരാറ് നിങ്ങളുടെ ലോഗിന്‍ ആണ്-നിര്‍ദ്ദേശങ്ങളുടെ ഗോപനീയതയുണ്ടും.';

  @override
  String get acceptableUse => 'സ്വികാര്യ ഉപയോഗം';

  @override
  String get acceptableUseContent =>
      'നിങ്ങൾ നിയാമനിര്‍ദ്ദേശിത ഉപയോഗത്തിനായി അധികാരബാഹ്യ കരാരാ്യ്ൻ, അപ്ലിക്കാഷനെ അനിയാമനിര്‍ദ്ദേശിത വിധിയിലൂടെ പ്രവേശനാണേനാണ് ലക്ഷ്യ നിർമ്മിത്ത് അനിയാമനിര്‍ദ്ദേശിത വ്യക്തികൾ നിങ്ങളുടെ അക്കൗണ്ട് കരാരുംരകൾ ഉപയോഗിത്ту ആപ് പരിസരത്ത്ന്‍ എന്തെങ്കിലും നിയാമനിര്‍ദ്ദേശിത പ്രവർത്തനം നടതി് ഫലപ്പെടേണ്ട ചിതാചരണ് നിയമങ്ങൾ ലംഘനം നിരോധനി്.';

  @override
  String get userResponsibilities => 'ഉപയോഗകർത്താ ബാധ്യതകൾ';

  @override
  String get userResponsibilitiesContent =>
      'നിങ്ങൾ പൂർണ്ണമായി ബാധ്യസ്ഥരാണ്: (എ) നിങ്ങളുടെ അക്കൌണ്ടിന്റെ സുരക്ഷ പരിരക്ഷിക്കാൻ, (ബി) നിങ്ങളുടെ അക്കൌണ്ടിലൂടെ നടത്തിയ എല്ലാ പ്രവർത്തനങ്ങൾക്കും, (സി) നിങ്ങളുടെ സർക്കാരിന്റെ നയങ്ങൾ പാലിക്കൽ ഉറപ്പാക്കാൻ, ഉം (ഡി) ഇടപാടുകളിലും ഓർഡറുകളിലും കൃത്യമായ വിവരം നൽകാൻ.';

  @override
  String get intellectualProperty => 'ബൌദ്ധിക സ്വത്ത്';

  @override
  String get intellectualPropertyContent =>
      'mySupplyCO അപ്ലിക്കേഷനിലെ എല്ലാ വിഷയവസ്തു, സ്വഭാവവിശേഷതകൾ, സുവിധകൾ എന്നിവ സർക്കാർ എജന്സിയുടെ ഉടമസ്വാധികാരത്തിനു കീഴിലാണ്, കോപ്പിരൈറ്റ് നിയമങ്ങൾ ഉം ബൌദ്ധിക സ്വത്ത് നിയമങ്ങൾ കൊണ്ട് സുരക്ഷിതമാണ്. പൂർവ സാക്ഷ്യപ്പെട്ട സമ്മതിയില്ലാതെ നിങ്ങൾ കൈ സാമഗ്രി പുനരുത്പാദിത്ത, വിതരണം അയയ്ക്കുക അല്ലെങ്കിൽ പ്രചരിപ്പിക്കാൻ കഴിയില്ല.';

  @override
  String get limitationOfLiability => 'ബാധ്യതയുടെ പരിമിതി';

  @override
  String get limitationOfLiabilityContent =>
      'mySupplyCO അപ്ലിക്കേഷൻ \"അതുപോലെ\" ആധാരത്തിൽ വിതരണം ചെയ്യുന്നതാണ്. സേവനം അവ്യാഹത വിനാ ത്രുടിയില്ലാതെ ഉണ്ടാകും എന്ന് നിങ്ങൾ വാരണ്ടി നൽകുന്നില്ല. നിയമ അനുശാസിത പരിധിയിൽ, നിങ്ങളുടെ അപ്ലിക്കേഷൻ ഉപയോഗത്തിനോട് ഉദ്ഭവിക്കുന്ന പരോക്ഷ, ക്ഷണികന്തേ, സവിശേഷ അല്ലെങ്കിൽ ഫലപ്രദ നാശത്തിനുള്ള ഞങ്ങൾ ബാധ്യസ്ഥരായിരിക്കുന്നില്ല.';

  @override
  String get dataAndInformation => 'ഡാറ്റ സുവിവരം';

  @override
  String get dataAndInformationContent =>
      'എല്ലാ സ്റ്റോക്ക് ഡാറ്റ, ഓർഡറുകൾ, ഇടപാട് രെജിസ്ട്രുകൾ സർക്കാർ എജന്സിയുടെ സ്വത്തായിരിക്കുന്നു. നിങ്ങൾ സർക്കാരി ഫങ്കഷന് അതിരെ ഈ വിവരം പകർപ്പ് വിതരണം അയയ്ക്കുക അല്ലെങ്കിൽ ഉപയോഗിക്കുന്നതിൽ സവോധാനമാണ്. സ്വകാര്യതാ നയത്തിനായി വിവരങ്ങൾ ഞങ്ങൾ കൈകാര്യം പരിചിന്നിയിരിക്കുന്നതിനു സവിശേഷ വിവരങ്ങൾക്കായി കാണുക.';

  @override
  String get accountTermination => 'അക്കൗണ്ട് നിരസന';

  @override
  String get accountTerminationContent =>
      'നിങ്ങൾ ഈ നിബന്ധനകൾ ലംഘനം നിരോധിതമായി പ്രയോഗത്തിൽ ഉപേക്ഷിത അനിയാമനിര്‍ദ്ദേശിത സർക്കാരാണ് നിയമങ്ങൾ പാലിജ്ഞാപനയിലെ വിഫലത കേസ് നാം നിങ്ങളുടെ അക്കൗണ്ട് നിലംബനം അഥവാ നിരസിയിക്കാനേ അധികാരം കരാരുംരിക്കുന്നു. നിരസന അജ്ഞാത അനിരീക്ഷിത വിജ്ഞാപനം കൂടാതെ ആകാമെന്നേ.';

  @override
  String get modificationsToTerms => 'നിബന്ധന റൈറ്റരിവരണം';

  @override
  String get modificationsToTermsContent =>
      'നാം ഈ നിബന്ധനകൾ റൈറ്റരി നിര്‍ദ്ദേശിത കാലത്തേ സ്വീകാരി് ആകാമെന്നേ. പരിവർത്തന പരിസ്ഥിതിയ് ഓര്‍ദ്ധന· ഈ നിബന്ധനകൾ പരിവർത്തന സ്വീകാരി് കരാരുംരിക്കുന്നത്.';

  @override
  String get governingLaw => 'നിരയ്കിക നിയമം';

  @override
  String get governingLawContent =>
      'ഈ നിബന്ധനകൾ ഭാരതത്തിലെ നിയമത്തിലൂടെ നിരയോജനി് സ്ഥാപിത്തരിക്കുന്നു. ഏകതരമായ നിയാമനിര്‍ദ്ദേശിത കര്‍ത്തവ്യം സമര്‍ഥ കോടതികളിന്റെ അധികാരത്തിന് വിധേയരിക്കുന്നു.';

  @override
  String get lastUpdatedTerms =>
      '⚠ അവസാനം പരിനിര്‍ദ്ദേശിത: മാര്‍ച്ച് 2026. ഈ നിബന്ധനകൾ mySupplyCO അപ്ലിക്കേഷനിന്റെ എല്ലാ ഉപയോഗകാരികളെ പ്രയോഗനികരിക്കുന്നു. ഈ അപ്ലിക്കേഷൻ ഉപയോഗിക്കുന്നത് നിങ്ങൾ ഈ നിബന്ധനകൾ വായിച്ച, മനസിലാക്കി, കെട്ടിയിരിക്കാൻ സമ്മതിച്ചിരിക്കുന്നു എന്നേ സ്‌വീകാരി്.';

  @override
  String get yourPrivacyIsProtected => 'നിങ്ങളുടെ സ്വകാര്യത സുരക്ഷിതമാണ്';

  @override
  String get privacyDescription =>
      'നിനക്ക് കേവലം 3 വിവരങ്ങൾ സംഗ്രഹിത്ത: നിങ്ങളുടെ പേര്, ഇമെയിൽ, മൊബൈൽ നമ്പർ. ഞങ്ങൾ കഴിഞ്ഞ് നിങ്ങളുടെ ഡാറ്റ ഇഷ്ട, വിൽക്കുക അയെങ്കിൽ ദുരുപയോഗം ചെയ്യുന്നതാണ്. നിങ്ങളുടെ വിവരങ്ങൾ പൂർണ്ണമായായ സർക്കാരി സപ്ലൈ ചെയിൻ പ്രവർത്തനങ്ങൾക്കായി വിനിയോഗിക്കുന്നതാണ്.';

  @override
  String get dataCollection => 'ഡാറ്റ സൂചിപ്പാദം';

  @override
  String get dataCollectionContent =>
      'mySupplyCO വിറ്റുകേല്പ് സമയത്ത് നിങ്ങൾ മാത്തങ്ങൾ സൂചിപ്പാദം ഓഫീസർ ഡാറ്റ സൂചിപ്പാദിച്ചിരിക്കുന്നു:';

  @override
  String get fullName => 'നിങ്ങളുടെ പൂർണോദ്ദേശ പേര്';

  @override
  String get emailAddress => 'നിങ്ങളുടെ ഇമെയിൽ സ്ഥാപനം';

  @override
  String get mobileNumber => 'നിങ്ങളുടെ ഫോൺ നമ്പർ';

  @override
  String get dataUsage => 'ഡാറ്റ ഉപയോഗം';

  @override
  String get dataUsageContent =>
      'നിങ്ങളുടെ നികിനാദങ്ങൾ പ്രത്യേകയുടെ ഉപയോഗ്ത ജനകത്തരിക്കുന്നു:';

  @override
  String get accountAuthentication => 'അക്കൗണ്ട് സ്‌വയ് ലോഗിൻ';

  @override
  String get orderConfirmations => 'ഓര്‍ഡര്‍ സ്‌വയ് നിരീക്ഷണ അയയിപ്പാനെ';

  @override
  String get customerSupport => 'ഉപയോഗകാരി പിന്തുണ നൽകാനെ';

  @override
  String get stockNotifications =>
      'സ്റ്റോക്ക്ക് പരിവർത്തന സിസ്റ്റം സതര്‍ക്കതകൾ നിങ്ങളെ അറിയിയിപ്പിക്കാനെ';

  @override
  String get governmentFunctions =>
      'സർക്കാരാണ് സാധന ശൃംഖല നിരീക്ഷണ സ്ഥാപനങ്ങൾ കഴിയിതിയിരിക്കാനെ';

  @override
  String get whatWeDoNotDo => 'നാം എന്തേ നിരോധനി് നി';

  @override
  String get doNotSellData =>
      'നാം നിങ്ങളുടെ നികിനാദങ്ങൾ വിൽകയോ പങ്കുവയ്കയോ എക്സചേഞ്ച് നിരോധനി്';

  @override
  String get doNotMarketData =>
      'നാം നിങ്ങളുടെ ഡാറ്റ വിപണനം അല്ലെങ്കിൽ പരസ്യ നിരോധനി്';

  @override
  String get doNotShareThirdParty =>
      'നാം നിങ്ങളുടെ ഡാറ്റ മൂന്നാം കക്ഷി സ്ഥാപനങ്ങൾ പങ്കുവയ്കുന്നില്ലായ്കേ';

  @override
  String get doNotUseOutsideGov =>
      'നാം നിങ്ങളുടെ ഡാറ്റ സർക്കാരാണ് സാധന സ്ഥാപനങ്ങൾ പരിരക്ഷിതമായി നിരോധനി്';

  @override
  String get doNotCombineData =>
      'നാം നിങ്ങളുടെ ഡാറ്റ അക്ഷരികരമായി സ്രോതസുകൾ സംയോജനം നിരോധനി്';

  @override
  String get dataSecurity => 'ഡാറ്റ സുരക്ഷ';

  @override
  String get dataSecurityContent =>
      'നിങ്ങളുടെ നികിനാദങ്ങൾ സുരക്ഷിത് സൂചിപ്പാദിച്ചിരിക്കാൻ നാം നിര്‍ദ്ദേശങ്ങൾ സാധനാ സുരക്ഷ നിര്‍ദ്ദേശം പരിപാലിക്കുന്നു:';

  @override
  String get encryptedTransmission =>
      'എന്‍ക്രിപ്റ്റ് ഡാറ്റ പരിസ്ഥിതിയ് (SSL/TLS)';

  @override
  String get secureServers => 'സുരക്ഷിത് സെർവ് അവസരങ്ങൾ';

  @override
  String get limitedAccess =>
      'നികിനാദങ്ങൾ അനുമതി പരിമിത വിധേയത (അനുമതിപ്പെട്ട കര്‍ത്തൃപത്റ് മാത്രമെ)';

  @override
  String get securityAudits => 'പരിണതമായ സുരക്ഷ ജ്ഞാപനാ പരിനിര്‍ദ്ദേശിത';

  @override
  String get governmentCompliance =>
      'സർക്കാരാണ് ഡാറ്റ സുരക്ഷ സ്‌വീകാരി് പാലിനി';

  @override
  String get yourRights => 'നിങ്ങളുടെ അധികാരങ്ങൾ';

  @override
  String get yourRightsContent => 'നിങ്ങൾക്ക് അനുകൂലായി:';

  @override
  String get accessData =>
      'നിങ്ങളുടെ നികിനാദങ്ങൾ എന്തെങ്കിലും കാലത്തേ അനുവാദിക്കാനെ';

  @override
  String get correctData => 'നിർഃസംശയ സ്ഥാപനം സേർജ്ഞചിയാ നിയാമനിര്‍ദ്ദേശിത';

  @override
  String get deleteAccount =>
      'നിരീക്ഷണ അക്കൗണ്ട് നിരസനം നിരീക്ഷണ സ്ഥിരത നിയാമനിര്‍ദ്ദേശിത';

  @override
  String get obtainCopy => 'നിങ്ങളുടെ നികിനാദങ്ങൾ പതിപ്പ് സ്വീകാരി് പെടുക';

  @override
  String get withdrawConsent => 'ഡാറ്റ ഉപയോഗത്തിനായി സമ്മതി പിന്നോട്ട് എടുക';

  @override
  String get dataRetention => 'ഡാറ്റ രണ്ടുഭാഗ';

  @override
  String get dataRetentionContent =>
      'നിങ്ങളുടെ നികിനാദങ്ങൾ സർക്കാരാണ് സാധനപരിഷ്കാര സ്ഥാപനങ്ങൾക്കാകെ ഉപയോഗ് നിയത്തരിക്കുന്നു. നിരീക്ഷണ നിരസന പിഞ്ചരിൽ, നിങ്ങളുടെ ഡാറ്റ 30 നാളിനെ നാളിനെ സ്ഥിര നിരസിയായ്കും, നിയാമനിര്‍ദ്ദേശിത നിയമത്ത് ഗഡം നിരസിയായ്കേ.';

  @override
  String get changesToPrivacyPolicy => 'നികിനാദങ്ങൾ സ്ഥാപനം പരിവർത്തന';

  @override
  String get changesToPrivacyPolicyContent =>
      'നാം ഇതiju നികിനാദങ്ങൾ സ്ഥാപനം പരിനിര്‍ദ്ദേശിത സമയത്തേ കഴിയാമെന്നേ. നാം ഇമെയിൽ അല്ലെങ്കിൽ അപ്ലിക്കേഷൻ അനന്യ പരിവർത്തനം നോട്ടിഫിക്കേറ്റ് സിസ്റ്റ്മെ. mySupplyCO നിരന്തര ഉപയോഗം പരിവർത്തന നികിനാദങ്ങൾ സ്ഥാപനം സ്വീകാരി് നിബന്ധിതരിക്കുന്നു.';

  @override
  String get contactUsPrivacy => 'നാമെ സംപര്‍ക്കം സേർയെ';

  @override
  String get contactUsPrivacyContent =>
      'നിങ്ങൾക്കേ ഈ നികിനാദങ്ങൾ സ്ഥാപനം അഥവാ നിങ്ങളുടെ നികിനാദങ്ങൾ സംബന്ധി എന്തെങ്കിലും ചോദ്യം ഉണ്ടെങ്കിൽ, കൃപ്പ് നാമെ സംപര്‍ക്കം സേര്‍യെ:';

  @override
  String get privacyEmail => 'ഇമെയിൽ: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'ഫോൺ: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'പോര്‍ട്ടലു: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 അവസാനഭാഗം അപ്ഡേറ്റ്: മാര്‍ച്ച് 2026. ഈ സ്വകാര്യത നയ്യം mySupplyCO സേവന നിബന്ധനകളുടെ ഭാഗമാണ്. ഈ അപ്ലിക്കേഷൻ ഉപയോഗം നടത്തിയ നാം ഇവിടെ വിവരിച്ച ഞാെരുദ്ധ സ്വകാര്യത പ്രാക്ടിസുകൾ എനുമു സ്വീകാരി നൽകുന്നീര്‍.';

  @override
  String get privacyPolicyPageTitle => 'സ്വകാര്യത നയം';

  @override
  String get termsConditionsPageTitle => 'നിബന്ധനകൾ';

  @override
  String get helpSupportPageTitle => 'സഹായതയും പിന്തുണയും';

  @override
  String get helpFaqCreateAccount => 'ഞാൻ ഒരു അക്കൗണ്ട് എങ്ങനെ സൃഷ്ടിക്കുന്നു?';

  @override
  String get helpFaqCreateAccountAns =>
      'MySupplyCo അപ്ലിക്കേഷൻ ഡൌണ്ലോഡ് ചെയ്ത് \"രജിസ്റ്റര്‍\" ടാപ്പ് ചെയ്യുക. നിങ്ങളുടെ പേര് എടുത്ത് ടൈപ്പ് ചെയ്യുക, നിങ്ങൾ നിങ്ങളുടെ Google അക്കൗണ്ട് ഉപയോഗിക്കാം അല്ലെങ്കിൽ മൊബൈൽ നമ്പര് ഉപയോഗിച്ച് ലോഗിൻ ചെയ്യാം. നിങ്ങൾ മൊബൈൽ നമ്പര് ഉപയോഗിച്ച് കഴിഞ്ഞാൽ, OTP സത്യാപനം ആവശ്യമാണ്.';

  @override
  String get helpFaqCheckStock =>
      'ഞാൻ സ്റ്റോക്കിന്റെ ലഭ്യത എങ്ങനെ പരിശോധിക്കും?';

  @override
  String get helpFaqCheckStockAns =>
      'ലോഗിൻ ചെയ്ത ശേഷം, \"സ്റ്റോക്ക്\" ടാബ് ടാപ്പ് ചെയ്യുക. നിങ്ങളുടെ നിര്‍ണ്ണയിത വിതരണ കേന്ദ്രത്തിൽ നിന്നുള്ള റിയാൽ-ടൈം ഇনവെന്റരി കാണാം. നിര്‍ദ്ദിഷ്ട ഇനങ്ങൾ കണ്ടെത്താൻ സിയര്‍ച്ച് ബാര് ഉപയോഗിക്കുക.';

  @override
  String get helpFaqNotifications => 'ഞാൻ അറിയിപ്പുകൾ എങ്ങനെ കൈപ്പറ്റും?';

  @override
  String get helpFaqNotificationsAns =>
      'സെറ്റിംഗ്‌സ് → അലര്‍ട്ടുകൾ നിയന്ത്രിക്കുക. സ്റ്റോക്ക് അപ്‌ഡേറ്റുകൾ, ഓര്‍ഡര് സ്ഥാപനം ഓം സിസ്റ്റം ഐഫാരണം അറിയിപ്പുകൾ സക്ഷം / അപ്രാപ്ത് ചെയ്യുക. പുഷ് അറിയിപ്പുകൾക്കായി അപ്ലിക്കേഷനിന് അനുമതി ആവശ്യമാണ്.';

  @override
  String get helpFaqOfflineMode => 'ഓഫ്‌ലൈൻ മോഡ് ഉണ്ടാണോ?';

  @override
  String get helpFaqOfflineModeAns =>
      'അതേ! അപ്ലിക്കേഷനിന് സ്വയമാണ്‌ സമീപകാല സ്റ്റോക്ക് ഡാറ്റ ക്യാഷ് ചെയ്യുന്നു. നിങ്ങൾ ഇന്റര്‍നെറ്റ് കണെക്ഷനില്ലെങ്കിലും മുമ്പ് ലോഡ് ചെയ്ത സ്റ്റോക്ക് വിവരങ്ങൾ കാണാം.';

  @override
  String get governmentPortalText => 'സര്‍ക്കാര് പോര്‍ട്ടലു';

  @override
  String get privacyDataCollection => 'ഡാറ്റ സംഗ്രഹം';

  @override
  String get privacyDataCollectionContent =>
      'mySupplyCO രജിസ്ട്രേഷനും വിനിയോഗത്തിനുമിടയിൽ നിങ്ങളിൽ നിന്നുമാത്രം ഈ വ്യക്തിഗത വിവരങ്ങൾ നേടിയെടുക്കുകയും സംരക്ഷിക്കുകയും ചെയ്യുന്നു:';

  @override
  String get privacyFullName => 'നിങ്ങളുടെ പൂർണ്ണമായ പേര്';

  @override
  String get privacyEmailAddress => 'നിങ്ങളുടെ ഇമെയിൽ വിലാസം';

  @override
  String get privacyMobileNumber => 'നിങ്ങളുടെ മോബൈൽ നമ്പർ';

  @override
  String get privacyDataUsage => 'ഡാറ്റ ഉപയോഗം';

  @override
  String get privacyDataUsageContent =>
      'നിങ്ങളുടെ വ്യക്തിഗത ഡാറ്റ വിശിഷ്ടമായി ഉപയോഗിക്കുന്നത്:';

  @override
  String get privacyAccountAuthentication => 'അക്കൗണ്ട് പരിശോധന ഒപ്പം ലോഗിൻ';

  @override
  String get privacyCustomerSupport => 'ഗ്രാഹക സഹായം നൽകൽ';

  @override
  String get privacyStockNotifications =>
      'സ്റ്റോക്ക് പരിവർത്തനങ്ങൾ ഒപ്പം സിസ്റ്റം അലർട്ടുകൾ സംബന്ധിച്ച് നിങ്ങളെ അരിയിപ്പിക്കൽ';

  @override
  String get privacyWhatWeDoNotDo => 'നാം ചെയ്യാത്ത കാര്യങ്ങൾ';

  @override
  String get privacyDoNotSell =>
      'നാം നിങ്ങളുടെ വ്യക്തിഗത ഡാറ്റ വിൽക്കുന്നില്ല, പങ്കിടുന്നില്ല അഥവാ വ്യാപാരം നടത്തുന്നില്ല';

  @override
  String get privacyDoNotMarket =>
      'നാം നിങ്ങളുടെ ഡാറ്റ വിപണനത്തിനോ കോപ്പിരൈറ്റാണ് നിമിത്തം ഉപയോഗിക്കുന്നില്ല';

  @override
  String get privacyDoNotShareThirdParty =>
      'നാം നിങ്ങളുടെ ഡാറ്റ മൂന്നാമത്തെ കക്ഷി കോർപ്പറേഷനുകളുമായി പങ്കിടുന്നില്ല';

  @override
  String get privacyDoNotUseOutsideGov =>
      'നാം നിങ്ങളുടെ ഡാറ്റ സർക്കാരാണ് വിതരണ സ്ഥാപനങ്ങൾ പരിരക്ഷിതമായി നിരോധനി്';

  @override
  String get privacyDoNotCombineData =>
      'നാം നിങ്ങളുടെ ഡാറ്റ ബാഹ്യ സ്രോതസുകളുമായി സംയോജനം നടത്തുന്നില്ല';

  @override
  String get privacyDataSecurity => 'ഡാറ്റ സുരക്ഷ';

  @override
  String get privacyDataSecurityContent =>
      'നിങ്ങളുടെ വ്യക്തിഗത വിവരങ്ങൾ സുരക്ഷിതമാക്കാൻ നാം ഇന്ത്യസ്ട്രി-സ്ഥാപിത സുരക്ഷ നടക്കങ്ങൾ നടപടിവരായ്ക്കുന്നു:';

  @override
  String get privacySecureServers => 'സുരക്ഷിത സെർവർ അവസരപ്പെടുത്തൽ';

  @override
  String get privacyLimitedAccess =>
      'വ്യക്തിഗത ഡാറ്റ പരിമിത പ്രവേശം (അധികൃത പേടിയായ്ക് മാത്രം)';

  @override
  String get privacySecurityAudits =>
      'നിയതമായ സുരക്ഷ പരിശോധനകൾ ഒപ്പം അപ്ഡേറ്റുകൾ';

  @override
  String get privacyGovernmentCompliance =>
      'സർക്കാരാണ് ഡാറ്റ സുരക്ഷ മാനദണ്ഡ അനുസരണ';

  @override
  String get privacyYourRights => 'നിങ്ങളുടെ അധികാരങ്ങൾ';

  @override
  String get privacyYourRightsContent => 'നിങ്ങൾക്ക് ഇതിന്റെ അധികാരമുണ്ട്:';

  @override
  String get privacyAccessData =>
      'ഏതെങ്കിലും സമയത്ത് നിങ്ങളുടെ വ്യക്തിഗത ഡാറ്റ പ്രവേശനം നടത്തുക';

  @override
  String get privacyCorrectData =>
      'സംശയാത്മക വിവരങ്ങൾ നിരുധരിക്കുന്നതിന്റെ അഭ്യർത്ഥന നടത്തുക';

  @override
  String get privacyDeleteAccount =>
      'നിങ്ങളുടെ അക്കൗണ്ട് ഒപ്പം ഡാറ്റ മുറുകെയ്യപ്പെടുത്താൻ അഭ്യർത്ഥന നടത്തുക';

  @override
  String get privacyWithdrawConsent =>
      'ഡാറ്റ വിനിയോഗത്തിനുള്ള സമ്മതി പിന്നോട്ട് കയ്യാളിയ്ക്കുക';

  @override
  String get privacyDataRetention => 'ഡാറ്റ സംഭരണം';

  @override
  String get privacyDataRetentionContent =>
      'നിങ്ങളുടെ വ്യക്തിഗത ഡാറ്റ സർക്കാരാണ് വിതരണ വ്യവസ്ഥാപനം സ്ഥാപനങ്ങൾക്കായി ആവശ്യപ്പെടുന്നിടത്തോളം സാധാരണ സമയത്തായി സൈത്ബാരിയ്ക്കുന്നു. അക്കൗണ്ട് മതിനിരുതിയായ ശേഷം, നിങ്ങളുടെ ഡാറ്റ 30 ദിവസത്തിതരത്ത് നാളിലെ സ്ഥിര നിഷ്കാര്യം ചെയ്യപ്പെടും, കാനുനാമായ നിയതമാകെ സ്ഥലങ്ങൾ അലികെ.';

  @override
  String get privacyChangesToPolicy => 'സ്വകാര്യത നയ്യത്ത് പരിവർത്തനവുകൾ';

  @override
  String get privacyChangesToPolicyContent =>
      'നാം ഈ സ്വകാര്യത നയ്യത്ത് നിയതമാക സമയത്തായ് അപ്ഡേറ്റ് നടത്തിയെ കഴിയും. നാം ഇമെയിൽ അല്ലെങ്കിൽ അപ്ലിക്കേഷൻ മാധ്യമത്ത് പ്രധാനകാര്യ പരിവർത്തനങ്ങൾ കുറിച്ച് അരിയിപ്പിച്ചൽ നടത്തുവ. mySupplyCO ന്റെ നിരന്തര വിനിയോഗം പരിവർത്തിതി നയ്യത്ത് സ്വീകൃതി സൂചിപ്പിക്കുന്നു.';

  @override
  String get privacyProtectedTitle => 'നിങ്ങളുടെ സ്വകാര്യത സുരക്ഷിതമാണ്';

  @override
  String get privacyProtectedDescription =>
      'നാം മാത്രം 3 വിവരങ്ങൾ നേടിയെടുക്കുന്നു: നിങ്ങളുടെ പേര്, ഇമെയിൽ ഒപ്പം മോബൈൽ നമ്പർ. നാം കഴിഞ്ഞ് നിങ്ങളുടെ ഡാറ്റ പങ്കിടാതെ, വിൽക്കാതെ, അല്ലെങ്കിൽ ദുരുപയോഗം ചെയ്യാതെ. നിങ്ങളുടെ വിവരങ്ങൾ വിശിഷ്ടമായി സർക്കാരാണ് വിതരണ പരിരാക്ഷ സ്ഥാപനങ്ങൾ ആയാൾ വിനിയോഗിയ്ക്കുന്നു.';

  @override
  String get privacyFooterNote =>
      '📋 അവസാനഭാഗം അപ്ഡേറ്റ്: മാര്‍ച്ച് 2026. ഈ സ്വകാര്യത നയ്യം mySupplyCO സേവന നിബന്ധനകളgebeurgruppe ഭാഗമാണ്. ഈ അപ്ലിക്കേഷൻ ഉപയോഗം നടത്തിയ നാം ഇവിടെ വിവരിച്ച ഞാോദ്ദ്സ്വകാര്യത പ്രാക്ടിസുകൾ എനുമു സ്വീകാരി നൽകുന്നീര്‍.';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'സർക്കാർ വിതരണ മാനേജ്മെന്റ് സിസ്റ്റം';

  @override
  String get termsIntroContent =>
      'MySupplyCo ആപ്ലിക്കേഷൻ ഉപയോഗിക്കുന്നതിന് മുമ്പ് ദയവായി ഈ നിബന്ധനകളും വ്യവസ്ഥകളും ശ്രദ്ധാപൂർവ്വം വായിക്കുക. ഈ ആപ്ലിക്കേഷനിലേക്കുള്ള നിങ്ങളുടെ പ്രവേശനവും ഉപയോഗവും ഈ നിബന്ധനകൾ നിങ്ങൾ അംഗീകരിക്കുന്നതിനും പാലിക്കുന്നതിനും വിധേയമാണ്.';

  @override
  String get termsUserAgreement => 'ഉപയോക്തൃ കരാർ';

  @override
  String get termsUserAgreementContent =>
      'MySupplyCo ആപ്ലിക്കേഷൻ ആക്സസ് ചെയ്യുകയും ഉപയോഗിക്കുകയും ചെയ്യുന്നതിലൂടെ, ഈ നിബന്ധനകൾക്കും വ്യവസ്ഥകൾക്കും വിധേയമായിരിക്കാൻ നിങ്ങൾ സമ്മതിക്കുന്നു. അംഗീകൃത സർക്കാർ ഉദ്യോഗസ്ഥർക്കും ഓർഗനൈസേഷനുകൾക്കുമായി സപ്ലൈ ചെയിൻ മാനേജ്മെൻ്റ് സുഗമമാക്കുന്നതിനാണ് ഈ ആപ്ലിക്കേഷൻ രൂപകൽപ്പന ചെയ്തിരിക്കുന്നത്.';

  @override
  String get termsEligibility => 'യോഗ്യത';

  @override
  String get termsEligibilityContent =>
      'ഈ ആപ്ലിക്കേഷൻ ഉപയോഗിക്കുന്നതിന് നിങ്ങൾ ഒരു അംഗീകൃത പൗരനായിരിക്കണം. രജിസ്ട്രേഷൻ സമയത്ത് കൃത്യവും പൂർണ്ണവുമായ വിവരങ്ങൾ നൽകാനും നിങ്ങളുടെ ലോഗിൻ ക്രെഡൻഷ്യലുകളുടെ രഹസ്യാത്മകത നിലനിർത്താനും നിങ്ങൾ സമ്മതിക്കുന്നു.';

  @override
  String get termsAcceptableUse => 'സ്വീകാര്യമായ ഉപയോഗം';

  @override
  String get termsAcceptableUseContent =>
      'ഇനിപ്പറയുന്നവ ചെയ്യില്ലെന്ന് നിങ്ങൾ സമ്മതിക്കുന്നു: (എ) അനധികൃത ആവശ്യങ്ങൾക്കായി ആപ്ലിക്കേഷൻ ഉപയോഗിക്കുക, (ബി) സിസ്റ്റത്തിലേക്ക് അനധികൃത ആക്സസ് നേടാൻ ശ്രമിക്കുക, (സി) അനധികൃത വ്യക്തികളുമായി നിങ്ങളുടെ അക്കൗണ്ട് ക്രെഡൻഷ്യലുകൾ പങ്കിടുക, (ഡി) ആപ്ലിക്കേഷനിലൂടെ ഏതെങ്കിലും നിയമവിരുദ്ധ പ്രവർത്തനങ്ങൾ നടത്തുക, അല്ലെങ്കിൽ (ഇ) ബാധകമായ ഏതെങ്കിലും നിയമങ്ങളോ ചട്ടങ്ങളോ ലംഘിക്കുക.';

  @override
  String get termsUserResponsibilities => 'ഉപയോക്തൃ ഉത്തരവാദിത്തങ്ങൾ';

  @override
  String get termsUserResponsibilitiesContent =>
      'ഇനിപ്പറയുന്നവയ്ക്ക് നിങ്ങൾക്ക് മാത്രമായിരിക്കും ഉത്തരവാദിത്തം: (എ) നിങ്ങളുടെ അക്കൗണ്ടിന്റെ സുരക്ഷ നിലനിർത്തുക, (ബി) നിങ്ങളുടെ അക്കൗണ്ട് ഉപയോഗിച്ച് നടത്തുന്ന എല്ലാ പ്രവർത്തനങ്ങളും, (സി) നിങ്ങളുടെ സർക്കാരിന്റെ നയങ്ങൾ പാലിക്കുന്നുണ്ടെന്ന് ഉറപ്പാക്കുക, കൂടാതെ (ഡി) ഇടപാടുകളുടെയും ഓർഡറുകളുടെയും സമയത്ത് കൃത്യമായ വിവരങ്ങൾ നൽകുക.';

  @override
  String get termsIntellectualProperty => 'ബൗദ്ധിക സ്വത്ത്';

  @override
  String get termsIntellectualPropertyContent =>
      'MySupplyCo ആപ്ലിക്കേഷന്റെ എല്ലാ ഉള്ളടക്കവും സവിശേഷതകളും പ്രവർത്തനങ്ങളും സർക്കാർ ഏജൻസിയുടെ ഉടമസ്ഥതയിലുള്ളതാണ്, പകർപ്പവകാശവും മറ്റ് ബൗദ്ധിക സ്വത്തവകാശ നിയമങ്ങളും ഉപയോഗിച്ച് പരിരക്ഷിച്ചിരിക്കുന്നു. മുൻകൂർ രേഖാമൂലമുള്ള സമ്മതമില്ലാതെ നിങ്ങൾക്ക് ഒരു ഉള്ളടക്കവും പുനർനിർമ്മിക്കാനോ വിതരണം ചെയ്യാനോ കൈമാറാനോ കഴിയില്ല.';

  @override
  String get termsLimitationOfLiability => 'ബാധ്യതയുടെ പരിമിതി';

  @override
  String get termsLimitationOfLiabilityContent =>
      'MySupplyCo ആപ്ലിക്കേഷൻ \"ഉള്ളതുപോലെ\" എന്ന അടിസ്ഥാനത്തിലാണ് നൽകിയിരിക്കുന്നത്. സേവനം തടസ്സമില്ലാത്തതോ പിശകില്ലാത്തതോ ആയിരിക്കുമെന്ന് ഞങ്ങൾ ഉറപ്പുനൽകുന്നില്ല. നിയമം അനുവദിക്കുന്ന പരമാവധി പരിധിവരെ, ആപ്ലിക്കേഷൻ്റെ നിങ്ങളുടെ ഉപയോഗത്തിൽ നിന്ന് ഉണ്ടാകുന്ന പരോക്ഷമോ ആകസ്മികമോ പ്രത്യേകമോ അനന്തരഫലമോ ആയ നാശനഷ്ടങ്ങൾക്ക് ഞങ്ങൾ ബാധ്യസ്ഥരല്ല.';

  @override
  String get termsDataAndInformation => 'ഡാറ്റയും വിവരങ്ങളും';

  @override
  String get termsDataAndInformationContent =>
      'എല്ലാ സ്റ്റോക്ക് ഡാറ്റയും ഇടപാട് രേഖകളും സർക്കാർ ഏജൻസിയുടെ സ്വത്താണ്. ഔദ്യോഗിക സർക്കാർ പ്രവർത്തനങ്ങൾക്കല്ലാതെ മറ്റ് ആവശ്യങ്ങൾക്കായി ഈ വിവരങ്ങൾ പകർത്താനോ വിതരണം ചെയ്യാനോ ഉപയോഗിക്കാനോ പാടില്ലെന്ന് നിങ്ങൾ സമ്മതിക്കുന്നു. വ്യക്തിഗത ഡാറ്റ ഞങ്ങൾ എങ്ങനെ കൈകാര്യം ചെയ്യുന്നു എന്നതിനെക്കുറിച്ചുള്ള വിശദാംശങ്ങൾക്ക് ഞങ്ങളുടെ സ്വകാര്യതാ നയം കാണുക.';

  @override
  String get termsAccountTermination => 'അക്കൗണ്ട് അവസാനിപ്പിക്കൽ';

  @override
  String get termsAccountTerminationContent =>
      'നിങ്ങൾ ഈ നിബന്ധനകൾ ലംഘിക്കുകയോ അനധികൃത ഉപയോഗത്തിൽ ഏർപ്പെടുകയോ സർക്കാർ ചട്ടങ്ങൾ പാലിക്കുന്നതിൽ പരാജയപ്പെടുകയോ ചെയ്താൽ നിങ്ങളുടെ അക്കൗണ്ട് താൽക്കാലികമായി നിർത്താനോ അവസാനിപ്പിക്കാനോ ഉള്ള അവകാശം ഞങ്ങളിൽ നിക്ഷിപ്തമാണ്. അവസാനിപ്പിക്കൽ ഉടനടി ആകാം കൂടാതെ മുൻകൂർ അറിയിപ്പ് ഇല്ലാതെയും ആകാം.';

  @override
  String get termsModificationsToTerms => 'നിബന്ധനകളിലെ മാറ്റങ്ങൾ';

  @override
  String get termsModificationsToTermsContent =>
      'ഏത് സമയത്തും ഈ നിബന്ധനകളും വ്യവസ്ഥകളും പരിഷ്കരിക്കാം. പോസ്റ്റുചെയ്യുമ്പോൾ തന്നെ മാറ്റങ്ങൾ പ്രാബല്യത്തിൽ വരും. പരിഷ്‌ക്കരണങ്ങളെத் தொடர்ந்து അപ്ലിക്കേഷൻ്റെ തുടർച്ചയായ ഉപയോഗം പുതുക്കിയ നിബന്ധനകൾ നിങ്ങൾ അംഗീകരിക്കുന്നതായി കണക്കാക്കും.';

  @override
  String get termsGoverningLaw => 'ഭരണ നിയമം';

  @override
  String get termsGoverningLawContent =>
      'ഈ നിബന്ധനകളും വ്യവസ്ഥകളും ഇന്ത്യയിലെ നിയമങ്ങൾക്കനുസൃതമായി നിയന്ത്രിക്കപ്പെടുന്നതും വ്യാഖ്യാനിക്കപ്പെടുന്നതുമാണ്. ഏതെങ്കിലും നിയമനടപടികൾ ഉചിതമായ കോടതികളുടെ അധികാരപരിധിക്ക് വിധേയമായിരിക്കും.';

  @override
  String get termsFooterNote =>
      '⚠ അവസാനം അപ്ഡേറ്റ് ചെയ്തത്: മാർച്ച് 2026. MySupplyCo ആപ്ലിക്കേഷന്റെ എല്ലാ ഉപയോക്താക്കൾക്കും ഈ നിബന്ധനകളും വ്യവസ്ഥകളും ബാധകമാണ്. ഈ ആപ്ലിക്കേഷൻ ഉപയോഗിക്കുന്നതിലൂടെ, നിങ്ങൾ ഈ നിബന്ധനകൾ വായിക്കുകയും മനസ്സിലാക്കുകയും അംഗീകരിക്കുകയും ചെയ്യുന്നുവെന്ന് നിങ്ങൾ സമ്മതിക്കുന്നു.';
}
