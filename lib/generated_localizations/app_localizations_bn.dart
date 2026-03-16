// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'মাইসাপ্লাই কো';

  @override
  String get searchSupplycoOutlets => 'সরবরাহ কো আউটলেট খুঁজুন';

  @override
  String get selectDistrict => 'জেলা নির্বাচন করুন';

  @override
  String get searchByNamePlaceCode => 'নাম, স্থান বা কোড দ্বারা অনুসন্ধান করুন';

  @override
  String get searchButton => 'অনুসন্ধান করুন';

  @override
  String get searchResults => 'অনুসন্ধান ফলাফল';

  @override
  String get lastVisited => 'সর্বশেষ পরিদর্শন';

  @override
  String get viewStock => 'স্টক দেখুন';

  @override
  String get selectedOutlet => 'নির্বাচিত আউটলেট';

  @override
  String get viewMore => 'আরও দেখুন';

  @override
  String get noOutletsFound => 'কোনো আউটলেট পাওয়া যায়নি।';

  @override
  String get allSupplycoOutlets => 'সমস্ত সরবরাহ কো আউটলেট';

  @override
  String district(Object district) {
    return '$district জেলা';
  }

  @override
  String outletFound(Object count) {
    return '$count আউটলেট পাওয়া গেছে';
  }

  @override
  String get sortedByDistance => 'দূরত্ব দ্বারা সাজানো';

  @override
  String get sort => 'সাজান >';

  @override
  String tapSearchToFind(Object district) {
    return 'সরকারী আউটলেট খুঁজতে \'অনুসন্ধান\' ট্যাপ করুন যা $district এ আপনার প্রশ্নের সাথে মিলে।';
  }

  @override
  String get pleaseEnterOutlet =>
      'আউটলেটের নাম বা দোকানের কোড বা স্থান লিখুন\nসরবরাহ কো আউটলেট খুঁজতে';

  @override
  String get continueAsGuest => 'অতিথি হিসেবে চালিয়ে যান';

  @override
  String get loginRegister => 'লগইন / নিবন্ধন করুন';

  @override
  String get profileSettings => 'প্রোফাইল এবং সেটিংস';

  @override
  String get settings => 'সেটিংস';

  @override
  String get setProfile => 'প্রোফাইল সেট করুন';

  @override
  String get manageAlerts => 'সতর্কতা পরিচালনা করুন';

  @override
  String get language => 'ভাষা';

  @override
  String get accessibility => 'অ্যাক্সেসযোগ্যতা';

  @override
  String get helpSupport => 'সহায়তা এবং সমর্থন';

  @override
  String get termsConditions => 'শর্তাবলী';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get logout => 'লগ আউট করুন';

  @override
  String get selectYourLanguage => 'আপনার ভাষা নির্বাচন করুন';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get confirm => 'নিশ্চিত করুন';

  @override
  String get guest => 'অতিথি ব্যবহারকারী';

  @override
  String get allDistrictsLabel => 'সমস্ত জেলা';

  @override
  String kmAway(Object distance) {
    return '$distance কিমি দূরে';
  }

  @override
  String get locationInfo => '📍 অবস্থান তথ্য';

  @override
  String get viewMoreOutlets => 'আরও আউটলেট দেখুন';

  @override
  String get loadingMoreOutlets => '__ আরও আউটলেট লোড হচ্ছে __';

  @override
  String get register => 'নিবন্ধন করুন';

  @override
  String get login => 'লগইন করুন';

  @override
  String get enterFullName => 'সম্পূর্ণ নাম লিখুন';

  @override
  String get enterMobileNumber => 'মোবাইল নম্বর লিখুন';

  @override
  String get getOTP => 'OTP পান';

  @override
  String get enterOTP => 'OTP লিখুন';

  @override
  String get resendOTP => 'OTP পুনরায় পাঠান';

  @override
  String get continueWithGoogle => 'গুগল দিয়ে চালিয়ে যান';

  @override
  String get or => 'বা';

  @override
  String get pleaseEnterNameAndNumber => 'আপনার নাম এবং নম্বর লিখুন';

  @override
  String get pleaseEnterNameMessage => 'আপনার নাম লিখুন';

  @override
  String get pleaseEnterMobileMessage => 'মোবাইল নম্বর লিখুন';

  @override
  String get pleaseEnterValidMobileNumber =>
      'একটি বৈধ 10-অঙ্কের মোবাইল নম্বর লিখুন';

  @override
  String get otpSentSuccessfully => 'OTP সফলভাবে পাঠানো হয়েছে!';

  @override
  String get numberNotRegistered => 'নম্বর নিবন্ধিত নয়। প্রথমে নিবন্ধন করুন।';

  @override
  String get noAccountFound =>
      'কোনো অ্যাকাউন্ট পাওয়া যায়নি। প্রথমে নিবন্ধন করুন।';

  @override
  String get pleaseEnterNameBefore => 'চালু রাখার আগে আপনার নাম লিখুন';

  @override
  String get pleaseEnterOTPMessage => 'দয়া করে OTP প্রবেশ করুন';

  @override
  String get registerButtonLabel => 'নিবন্ধন করুন';

  @override
  String get loginButtonLabel => 'লগইন করুন';

  @override
  String get languageEnglish => 'ইংরেজি';

  @override
  String get languageMalayalam => 'মালয়ালাম';

  @override
  String get languageGujarati => 'গুজরাটি';

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
  String get frequentlyAskedQuestions => 'প্রায়ই জিজ্ঞাসা করা প্রশ্ন';

  @override
  String get needMoreHelp => 'আরও সাহায্য প্রয়োজন?';

  @override
  String get emailSupport => 'ইমেলÂ সহায়তা';

  @override
  String get phoneSupport => 'ফোন সহায়তা';

  @override
  String get governmentPortal => 'সরকারী পোর্টাল';

  @override
  String get supportEmail => 'support@mysupplyco.gov.in';

  @override
  String get supportPhone => '+91-1800-SUPPLY-GO';

  @override
  String get supportWebsite => 'www.mysupplyco.gov.in';

  @override
  String get faqQ1 => 'আমি কীভাবে একটি অ্যাকাউন্ট তৈরি করি?';

  @override
  String get faqA1 =>
      'mySupplyCO অ্যাপ ডাউনলোড করুন এবং \"সাইন আপ\" ট্যাপ করুন। আপনার নাম, ইমেল এবং মোবাইল নম্বর লিখুন। আপনি একটি যাচাইকরণ কোড পাবেন। এটি প্রবেশ করে নিবন্ধন সম্পন্ন করুন।';

  @override
  String get faqQ2 => 'আমি কীভাবে স্টক উপলব্ধতা পরীক্ষা করি?';

  @override
  String get faqA2 =>
      'লগইন করার পরে, \"স্টক\" ট্যাব ট্যাপ করুন। আপনি আপনার নির্ধারিত সরবরাহ কেন্দ্র থেকে রিয়েল-টাইম ইনভেন্টরি দেখতে পারেন। নির্দিষ্ট আইটেম খুঁজে পেতে সার্চ বার ব্যবহার করুন।';

  @override
  String get faqQ3 => 'কে অর্ডার দিতে পারেন?';

  @override
  String get faqA3 =>
      'mySupplyCO-তে নিবন্ধিত সরকার-বৈধ কর্মকর্তারা অর্ডার দিতে পারেন। আপনার অ্যাক্সেস স্তর আপনার সরকার সংস্থা এবং ভূমিকার উপর নির্ভর করে।';

  @override
  String get faqQ4 => 'আমি কীভাবে বিজ্ঞপ্তি পাই?';

  @override
  String get faqA4 =>
      'সেটিংস → সতর্কতা পরিচালনা করুন এ যান স্টক আপডেট, অর্ডার স্ট্যাটাস এবং সিস্টেম ঘোষণার জন্য বিজ্ঞপ্তি সক্ষম/অক্ষম করতে।';

  @override
  String get faqQ5 => 'কি অফলাইন মোড আছে?';

  @override
  String get faqA5 =>
      'হ্যাঁ! অ্যাপ স্বয়ংক্রিয়ভাবে সর্বশেষ স্টক ডেটা ক্যাশ করে। আপনি ইন্টারনেট সংযোগ ছাড়াই পূর্বে লোড করা স্টক তথ্য দেখতে পারেন।';

  @override
  String get faqQ6 => 'আমি আমার পাসওয়ার্ড কীভাবে পুনরায় সেট করি?';

  @override
  String get faqA6 =>
      'লগইন পৃষ্ঠায়, \"পাসওয়ার্ড ভুলে গেছেন?\" ট্যাপ করুন এবং আপনার নিবন্ধিত ইমেল প্রবেশ করুন। আপনি ইমেলের মাধ্যমে একটি পুনরায় সেট লিঙ্ক পাবেন। নতুন পাসওয়ার্ড তৈরি করতে নির্দেশনা অনুসরণ করুন।';

  @override
  String get governmentSupplyManagementSystem =>
      'সরকারী সরবরাহ ব্যবস্থাপনা সিস্টেম';

  @override
  String get pleaseReadTermsCarefully =>
      'mySupplyCO অ্যাপ্লিকেশন ব্যবহার করার আগে এই শর্তাবলী সাবধানে পড়ুন। এই আবেদনের আপনার অ্যাক্সেস এবং ব্যবহার এই শর্তাবলীর গ্রহণযোগ্যতা এবং সম্মতির শর্তাধীন।';

  @override
  String get userAgreement => 'ব্যবহারকারী চুক্তি';

  @override
  String get userAgreementContent =>
      'mySupplyCO অ্যাপ্লিকেশন অ্যাক্সেস এবং ব্যবহার করে, আপনি এই শর্তাবলী দ্বারা আবদ্ধ হতে সম্মত হন। এই আবেদনটি অনুমোদিত সরকারী কর্মকর্তা এবং সংস্থাগুলির জন্য সরবরাহ শৃংখল ব্যবস্থাপনা সহজতর করার জন্য ডিজাইন করা হয়েছে।';

  @override
  String get eligibility => 'যোগ্যতা';

  @override
  String get eligibilityContent =>
      'এই অ্যাপ্লিকেশনটি ব্যবহার করতে আপনি একজন অনুমোদিত সরকারী কর্মকর্তা বা সরকার সংস্থার প্রতিনিধি হতে হবে। আপনি নিবন্ধনের সময় সঠিক এবং সম্পূর্ণ তথ্য প্রদান করতে এবং আপনার লগইন পাওয়ার গোপনীয়তা বজায় রাখতে সম্মত হন।';

  @override
  String get acceptableUse => 'গ্রহণযোগ্য ব্যবহার';

  @override
  String get acceptableUseContent =>
      'আপনি সম্মত নন: (A) অননুমোদিত উদ্দেশ্যে অ্যাপ্লিকেশন ব্যবহার, (B) সিস্টেমে অননুমোদিত অ্যাক্সেস অর্জনের চেষ্টা, (C) আপনার অ্যাকাউন্ট শংসাপত্র অননুমোদিত ব্যক্তিদের সাথে ভাগ করুন, (D) অ্যাপ্লিকেশনের মাধ্যমে যেকোনো অবৈধ কার্যকলাপ পরিচালনা, বা (E) প্রযোজ্য আইন বা নিয়ম লঙ্ঘন করুন।';

  @override
  String get userResponsibilities => 'ব্যবহারকারী দায়িত্ব';

  @override
  String get userResponsibilitiesContent =>
      'আপনি পুরোপুরি দায়ী: (A) আপনার অ্যাকাউন্টের নিরাপত্তা বজায় রাখা, (B) আপনার অ্যাকাউন্ট ব্যবহার করে পরিচালিত সমস্ত কার্যকলাপ, (C) আপনার সরকারের নীতিমালার সম্মতি নিশ্চিত করা, এবং (D) লেনদেন এবং অর্ডারের সময় সঠিক তথ্য প্রদান করা।';

  @override
  String get intellectualProperty => 'বৌদ্ধিক সম্পত্তি';

  @override
  String get intellectualPropertyContent =>
      'mySupplyCO অ্যাপ্লিকেশনের সমস্ত সামগ্রী, বৈশিষ্ট্য এবং কার্যকারিতা সরকারী এজেন্সির মালিকানাধীন, কপিরাইট এবং অন্যান্য বৌদ্ধিক সম্পত্তি আইন দ্বারা সুরক্ষিত। আপনি পূর্ব লিখিত সম্মতি ছাড়াই কোনো সামগ্রী পুনরুত্পাদন, বিতরণ বা সম্প্রচার করতে পারেন না।';

  @override
  String get limitationOfLiability => 'দায়বদ্ধতার সীমাবদ্ধতা';

  @override
  String get limitationOfLiabilityContent =>
      'mySupplyCO অ্যাপ্লিকেশনটি \"যেমন আছে\" ভিত্তিতে সরবরাহ করা হয়। আমরা গ্যারান্টি দিই না যে সেবা নিরবচ্ছিন্ন বা ত্রুটিমুক্ত হবে। আইনে অনুমোদিত সর্বোচ্চ পরিমাণে, আমরা আপনার অ্যাপ্লিকেশন ব্যবহার থেকে উদ্ভূত কোনো পরোক্ষ, ঘটনামূলক, বিশেষ, বা ফলস্বরূপ ক্ষতির জন্য দায়বদ্ধ নই।';

  @override
  String get dataAndInformation => 'ডেটা এবং তথ্য';

  @override
  String get dataAndInformationContent =>
      'সমস্ত স্টক ডেটা, অর্ডার এবং লেনদেন রেকর্ড সরকার এজেন্সির সম্পত্তি। আপনি সরকারী কার্যকারিতা ছাড়া অন্য উদ্দেশ্যে এই তথ্য অনুলিপি, বিতরণ বা ব্যবহার করতে সম্মত না হন।';

  @override
  String get accountTermination => 'অ্যাকাউন্ট সমাপ্তি';

  @override
  String get accountTerminationContent =>
      'যদি আপনি এই শর্তাবলী লঙ্ঘন করেন, অননুমোদিত ব্যবহার জড়িত থাকেন, বা সরকারী নিয়ম মেনে চলতে ব্যর্থ হন আমরা আপনার অ্যাকাউন্ট সাস্পেন্ড বা বাতিল করার অধিকার সংরক্ষণ করি। টার্মিনেশন তাৎক্ষণিক এবং আরও নোটিশ ছাড়াই হতে পারে।';

  @override
  String get modificationsToTerms => 'শর্তাবলী পরিবর্তন';

  @override
  String get modificationsToTermsContent =>
      'আমরা যেকোনো সময় এই শর্তাবলী সংশোধন করতে পারি। পরিবর্তনগুলি পোস্ট করার তাৎক্ষণিক কার্যকর হবে। পোস্টিংয়ের পর অ্যাপ্লিকেশনের ক্রমাগত ব্যবহার আপডেট শর্তাবলী গ্রহণের মানে।';

  @override
  String get governingLaw => 'আইনি নিয়ন্ত্রণ';

  @override
  String get governingLawContent =>
      'এই শর্তাবলী ভারতের আইন দ্বারা শাসিত এবং প্রয়োগ করা হয়। যেকোনো আইনি কার্যক্রম বা প্রক্রিয়া উপযুক্ত কোর্টের অধিক্ষেত্রের অধীন হবে।';

  @override
  String get lastUpdatedTerms =>
      '⚠ শেষ আপডেট: মার্চ 2026। এই শর্তাবলী mySupplyCO অ্যাপ্লিকেশনের সমস্ত ব্যবহারকারীদের জন্য প্রযোজ্য। এই অ্যাপ্লিকেশন ব্যবহার করে, আপনি স্বীকার করেন যে আপনি এই শর্তাবলী পড়েছেন, বুঝেছেন এবং দ্বারা আবদ্ধ হতে সম্মত হন।';

  @override
  String get yourPrivacyIsProtected => 'আপনার গোপনীয়তা সুরক্ষিত';

  @override
  String get privacyDescription =>
      'আমরা শুধুমাত্র 3 টি তথ্য সংগ্রহ করি: আপনার নাম, ইমেল এবং মোবাইল নম্বর। আমরা কখনো আপনার ডেটা শেয়ার, বিক্রয় বা দুর্ব্যবহার করি না। আপনার তথ্য একচেটিয়াভাবে সরকারী সরবরাহ শৃংখল অপারেশনের জন্য ব্যবহৃত হয়।';

  @override
  String get dataCollection => 'ডেটা সংগ্রহ';

  @override
  String get dataCollectionContent =>
      'mySupplyCO নিবন্ধন এবং ব্যবহারের সময় আপনার কাছ থেকে শুধুমাত্র নিম্নলিখিত ব্যক্তিগত তথ্য সংগ্রহ এবং সংরক্ষণ করে:';

  @override
  String get fullName => 'আপনার পূর্ণ নাম';

  @override
  String get emailAddress => 'আপনার ইমেল ঠিকানা';

  @override
  String get mobileNumber => 'আপনার মোবাইল নম্বর';

  @override
  String get dataUsage => 'ডেটা ব্যবহার';

  @override
  String get dataUsageContent =>
      'আপনার ব্যক্তিগত ডেটা একচেটিয়াভাবে জন্য ব্যবহৃত হয়:';

  @override
  String get accountAuthentication => 'অ্যাকাউন্ট প্রমাণীকরণ এবং লগইন';

  @override
  String get orderConfirmations => 'অর্ডার নিশ্চিতকরণ এবং আপডেট পাঠানো';

  @override
  String get customerSupport => 'গ্রাহক সহায়তা প্রদান করা';

  @override
  String get stockNotifications =>
      'স্টক পরিবর্তন এবং সিস্টেম সতর্কতা সম্পর্কে আপনাকে জানানো';

  @override
  String get governmentFunctions =>
      'সরকারী সরবরাহ শৃংখল ব্যবস্থাপনা কার্যক্রম পূর্ণ করা';

  @override
  String get whatWeDoNotDo => 'আমরা যা করি না';

  @override
  String get doNotSellData =>
      'আমরা আপনার ব্যক্তিগত ডেটা বিক্রয়, শেয়ার বা ট্রেড করি না';

  @override
  String get doNotMarketData =>
      'আমরা আপনার ডেটা বিপণন বা বিজ্ঞাপনের জন্য ব্যবহার করি না';

  @override
  String get doNotShareThirdParty =>
      'আমরা আপনার ডেটা তৃতীয় পক্ষের কোম্পানিগুলিতে শেয়ার করি না';

  @override
  String get doNotUseOutsideGov =>
      'আমরা সরকারী সরবরাহ কার্যকারিতার বাইরে উদ্দেশ্যে আপনার ডেটা ব্যবহার করি না';

  @override
  String get doNotCombineData =>
      'আমরা আপনার ডেটা বাহ্যিক উত্সগুলির সাথে সংমিশ্রণ করি না';

  @override
  String get dataSecurity => 'ডেটা সুরক্ষা';

  @override
  String get dataSecurityContent =>
      'আমরা আপনার ব্যক্তিগত তথ্য রক্ষা করার জন্য শিল্প-মান নিরাপত্তা ব্যবস্থা প্রয়োগ করি:';

  @override
  String get encryptedTransmission => 'এনক্রিপ্টেড ডেটা ট্রান্সমিশন (SSL/TLS)';

  @override
  String get secureServers => 'সুরক্ষিত সার্ভার অবকাঠামো';

  @override
  String get limitedAccess =>
      'ব্যক্তিগত ডেটা (শুধুমাত্র অনুমোদিত কর্মীদের) সীমিত অ্যাক্সেস';

  @override
  String get securityAudits => 'নিয়মিত সুরক্ষা অডিট এবং আপডেট';

  @override
  String get governmentCompliance => 'সরকারী ডেটা সুরক্ষা মান সম্মতি';

  @override
  String get yourRights => 'আপনার অধিকার';

  @override
  String get yourRightsContent => 'আপনার অধিকার রয়েছে:';

  @override
  String get accessData => 'যেকোনো সময় আপনার ব্যক্তিগত ডেটা অ্যাক্সেস করুন';

  @override
  String get correctData => 'ভুল তথ্য সংশোধনের অনুরোধ করুন';

  @override
  String get deleteAccount =>
      'আপনার অ্যাকাউন্ট এবং ডেটা মুছে ফেলার অনুরোধ করুন';

  @override
  String get obtainCopy => 'আপনার ব্যক্তিগত তথ্যের একটি অনুলিপি পান';

  @override
  String get withdrawConsent => 'ডেটা ব্যবহারের জন্য সম্মতি প্রত্যাহার করুন';

  @override
  String get dataRetention => 'ডেটা ধারণ';

  @override
  String get dataRetentionContent =>
      'আপনার ব্যক্তিগত ডেটা শুধুমাত্র সরকারী সরবরাহ ব্যবস্থাপনা কার্যকারিতার জন্য প্রয়োজনীয় সময়ের জন্য ধরে রাখা হয়। অ্যাকাউন্ট মুছে ফেলার পরে, আপনার ডেটা 30 দিনের মধ্যে আমাদের সিস্টেম থেকে স্থায়ীভাবে সরানো হবে, আইন দ্বারা প্রয়োজনীয় ক্ষেত্রগুলি ছাড়া।';

  @override
  String get changesToPrivacyPolicy => 'গোপনীয়তা নীতিতে পরিবর্তন';

  @override
  String get changesToPrivacyPolicyContent =>
      'আমরা এই গোপনীয়তা নীতি সময়কালে আপডেট করতে পারি। আমরা ইমেল বা অ্যাপ্লিকেশনের মাধ্যমে যেকোনো উল্লেখযোগ্য পরিবর্তনের বিজ্ঞপ্তি দেব। mySupplyCO-এর ক্রমাগত ব্যবহার আপডেট নীতি গ্রহণ নির্দেশ করে।';

  @override
  String get contactUsPrivacy => 'আমাদের সাথে যোগাযোগ করুন';

  @override
  String get contactUsPrivacyContent =>
      'যদি আপনার এই গোপনীয়তা নীতি বা আপনার ব্যক্তিগত ডেটা সম্পর্কে প্রশ্ন থাকে তবে দয়া করে আমাদের সাথে যোগাযোগ করুন:';

  @override
  String get privacyEmail => 'ইমেল: privacy@mysupplyco.gov.in';

  @override
  String get privacyPhone => 'ফোন: +91-1800-SUPPLY-GO';

  @override
  String get privacyPortal => 'পোর্টাল: www.mysupplyco.gov.in';

  @override
  String get lastUpdatedPrivacy =>
      '📋 শেষ আপডেট: মার্চ 2026। এই গোপনীয়তা নীতি mySupplyCO সেবার শর্তাবলীর অংশ। এই অ্যাপ্লিকেশন ব্যবহার করে, আপনি এখানে রূপরেখা করা আমাদের গোপনীয়তা অনুশীলনের সম্মতি প্রদান করেন।';

  @override
  String get privacyPolicyPageTitle => 'গোপনীয়তা নীতি';

  @override
  String get termsConditionsPageTitle => 'শর্তাবলী';

  @override
  String get helpSupportPageTitle => 'সহায়তা এবং সমর্থন';

  @override
  String get helpFaqCreateAccount => 'আমি কীভাবে একটি অ্যাকাউন্ট তৈরি করি?';

  @override
  String get helpFaqCreateAccountAns =>
      'MySupplyCo অ্যাপ ডাউনলোড করুন এবং \"রেজিস্টার\" ট্যাপ করুন। আপনার নাম লিখুন, আপনি আপনার গুগল অ্যাকাউন্ট ব্যবহার করতে পারেন বা মোবাইল নম্বর দিয়ে লগইন করতে পারেন। যদি আপনি মোবাইল নম্বর ব্যবহার করছেন তবে OTP যাচাইকরণ প্রয়োজন।';

  @override
  String get helpFaqCheckStock => 'আমি কীভাবে স্টক উপলব্ধতা পরীক্ষা করি?';

  @override
  String get helpFaqCheckStockAns =>
      'লগইন করার পরে, \"স্টক\" ট্যাব ট্যাপ করুন। আপনি আপনার নির্ধারিত সরবরাহ কেন্দ্র থেকে রিয়েল-টাইম ইনভেন্টরি দেখতে পারেন। নির্দিষ্ট আইটেম খুঁজে পেতে সার্চ বার ব্যবহার করুন।';

  @override
  String get helpFaqNotifications => 'আমি কীভাবে বিজ্ঞপ্তি পাই?';

  @override
  String get helpFaqNotificationsAns =>
      'সেটিংস → সতর্কতা পরিচালনা করুন এ যান স্টক আপডেট এবং সিস্টেম ঘোষণার জন্য বিজ্ঞপ্তি সক্ষম/অক্ষম করতে। পুশ নোটিফিকেশনের জন্য অ্যাপ অনুমতি প্রয়োজন।';

  @override
  String get helpFaqOfflineMode => 'কি অফলাইন মোড আছে?';

  @override
  String get helpFaqOfflineModeAns =>
      'হ্যাঁ! অ্যাপ স্বয়ংক্রিয়ভাবে সর্বশেষ স্টক ডেটা ক্যাশ করে। আপনি ইন্টারনেট সংযোগ ছাড়াই পূর্বে লোড করা স্টক তথ্য দেখতে পারেন।';

  @override
  String get governmentPortalText => 'সরকারী পোর্টাল';

  @override
  String get privacyDataCollection => 'ডেটা সংগ্রহ';

  @override
  String get privacyDataCollectionContent =>
      'MySupplyCo নিবন্ধন এবং ব্যবহারের সময় আপনার কাছ থেকে কেবল নিম্নলিখিত ব্যক্তিগত তথ্য সংগ্রহ এবং সংরক্ষণ করে:';

  @override
  String get privacyFullName => 'আপনার পূর্ণ নাম';

  @override
  String get privacyEmailAddress => 'আপনার ইমেল ঠিকানা';

  @override
  String get privacyMobileNumber => 'আপনার মোবাইল নম্বর';

  @override
  String get privacyDataUsage => 'ডেটা ব্যবহার';

  @override
  String get privacyDataUsageContent =>
      'আপনার ব্যক্তিগত ডেটা এক্সক্লুসিভভাবে নিম্নলিখিতের জন্য ব্যবহৃত হয়:';

  @override
  String get privacyAccountAuthentication => 'অ্যাকাউন্ট প্রমাণীকরণ এবং লগইন';

  @override
  String get privacyCustomerSupport => 'গ্রাহক সহায়তা প্রদান করা';

  @override
  String get privacyStockNotifications =>
      'স্টক পরিবর্তন এবং সিস্টেম সতর্কতা সম্পর্কে আপনাকে অবহিত করা';

  @override
  String get privacyWhatWeDoNotDo => 'আমরা কী করি না';

  @override
  String get privacyDoNotSell =>
      'আমরা আপনার ব্যক্তিগত ডেটা বিক্রি, শেয়ার বা বাণিজ্য করি না';

  @override
  String get privacyDoNotMarket =>
      'আমরা মার্কেটিং বা বিজ্ঞাপনের জন্য আপনার ডেটা ব্যবহার করি না';

  @override
  String get privacyDoNotShareThirdParty =>
      'আমরা আপনার ডেটা তৃতীয় পক্ষের কোম্পানিগুলির সাথে শেয়ার করি না';

  @override
  String get privacyDoNotUseOutsideGov =>
      'আমরা সরকারী সরবরাহ কার্যকরের বাইরে অন্য কোনো উদ্দেশ্যে আপনার ডেটা ব্যবহার করি না';

  @override
  String get privacyDoNotCombineData =>
      'আমরা বাহ্যিক উত্স সহ আপনার ডেটা একত্রিত করি না';

  @override
  String get privacyDataSecurity => 'ডেটা নিরাপত্তা';

  @override
  String get privacyDataSecurityContent =>
      'আমরা আপনার ব্যক্তিগত তথ্য রক্ষা করতে শিল্প-মানদণ্ড নিরাপত্তা ব্যবস্থা প্রয়োগ করি:';

  @override
  String get privacySecureServers => 'নিরাপদ সার্ভার অবকাঠামো';

  @override
  String get privacyLimitedAccess =>
      'ব্যক্তিগত ডেটায় সীমিত অ্যাক্সেস (শুধুমাত্র অনুমোদিত কর্মীরা)';

  @override
  String get privacySecurityAudits => 'নিয়মিত নিরাপত্তা অডিট এবং আপডেট';

  @override
  String get privacyGovernmentCompliance =>
      'সরকারী ডেটা সুরক্ষা মানদণ্ডের সম্মতি';

  @override
  String get privacyYourRights => 'আপনার অধিকার';

  @override
  String get privacyYourRightsContent => 'আপনার নিম্নলিখিত অধিকার রয়েছে:';

  @override
  String get privacyAccessData =>
      'যে কোনো সময় আপনার ব্যক্তিগত ডেটা অ্যাক্সেস করুন';

  @override
  String get privacyCorrectData => 'ভুল তথ্য সংশোধনের অনুরোধ করুন';

  @override
  String get privacyDeleteAccount =>
      'আপনার অ্যাকাউন্ট এবং ডেটা মুছে ফেলার অনুরোধ করুন';

  @override
  String get privacyWithdrawConsent =>
      'ডেটা ব্যবহারের জন্য সম্মতি প্রত্যাহার করুন';

  @override
  String get privacyDataRetention => 'ডেটা ধারণ';

  @override
  String get privacyDataRetentionContent =>
      'আপনার ব্যক্তিগত ডেটা কেবলমাত্র সরকারী সরবরাহ পরিচালনা ফাংশনের জন্য প্রয়োজনীয় সময় ধরে রাখা হয়। অ্যাকাউন্ট মোছা হলে, আপনার ডেটা ৩০ দিনের মধ্যে আমাদের সিস্টেম থেকে স্থায়ীভাবে সরানো হবে, যেখানে আইন দ্বারা প্রয়োজনীয় সেখানে ব্যতিক্রম।';

  @override
  String get privacyChangesToPolicy => 'গোপনীয়তা নীতিতে পরিবর্তন';

  @override
  String get privacyChangesToPolicyContent =>
      'আমরা সময়ে সময়ে এই গোপনীয়তা নীতি আপডেট করতে পারি। আমরা ইমেল বা অ্যাপ্লিকেশনের মাধ্যমে কোনো উল্লেখযোগ্য পরিবর্তন সম্পর্কে ব্যবহারকারীদের অবহিত করব। MySupplyCo-এর অবিরত ব্যবহার আপডেট করা নীতির গ্রহণযোগ্যতা গঠন করে।';

  @override
  String get privacyProtectedTitle => 'আপনার গোপনীয়তা সুরক্ষিত';

  @override
  String get privacyProtectedDescription =>
      'আমরা কেবল ৩টি তথ্য সংগ্রহ করি: আপনার নাম, ইমেল এবং মোবাইল নম্বর। আমরা কখনো আপনার ডেটা শেয়ার, বিক্রি বা দুরুপযোগ করব না। আপনার তথ্য একচেটিয়াভাবে সরকারী সরবরাহ শৃঙ্খল অপারেশনের জন্য ব্যবহার করা হয়।';

  @override
  String get privacyFooterNote =>
      '📋 সর্বশেষ আপডেট: মার্চ 2026। এই গোপনীয়তা নীতি MySupplyCo সেবার শর্তাবলীর অংশ। এই অ্যাপ্লিকেশন ব্যবহার করে, আপনি এখানে বর্ণিত আমাদের গোপনীয়তা অনুশীলনে সম্মতি দিচ্ছেন।';

  @override
  String get termsGovernmentSupplyManagementSystem =>
      'সরকারী সরবরাহ ব্যবস্থাপনা সিস্টেম';

  @override
  String get termsIntroContent =>
      'MySupplyCo অ্যাপ্লিকেশন ব্যবহার করার আগে এই শর্তাবলী সাবধানে পড়ুন। এই আবেদনের আপনার অ্যাক্সেস এবং ব্যবহার এই শর্তাবলীর গ্রহণযোগ্যতা এবং সম্মতির শর্তাধীন।';

  @override
  String get termsUserAgreement => 'ব্যবহারকারী চুক্তি';

  @override
  String get termsUserAgreementContent =>
      'MySupplyCO অ্যাপ্লিকেশন অ্যাক্সেস এবং ব্যবহার করে, আপনি এই শর্তাবলী দ্বারা আবদ্ধ হতে সম্মত হন। এই আবেদনটি অনুমোদিত সরকারী কর্মকর্তা এবং সংস্থাগুলির জন্য সরবরাহ শৃংখল ব্যবস্থাপনা সহজতর করার জন্য ডিজাইন করা হয়েছে।';

  @override
  String get termsEligibility => 'যোগ্যতা';

  @override
  String get termsEligibilityContent =>
      'এই অ্যাপ্লিকেশনটি ব্যবহার করতে আপনি একজন অনুমোদিত সরকারী কর্মকর্তা বা সরকার সংস্থার প্রতিনিধি হতে হবে। আপনি নিবন্ধনের সময় সঠিক এবং সম্পূর্ণ তথ্য প্রদান করতে এবং আপনার লগইন পাওয়ার গোপনীয়তা বজায় রাখতে সম্মত হন।';

  @override
  String get termsAcceptableUse => 'গ্রহণযোগ্য ব্যবহার';

  @override
  String get termsAcceptableUseContent =>
      'আপনি সম্মত নন: (A) অননুমোদিত উদ্দেশ্যে অ্যাপ্লিকেশন ব্যবহার, (B) সিস্টেমে অননুমোদিত অ্যাক্সেস অর্জনের চেষ্টা, (C) আপনার অ্যাকাউন্ট শংসাপত্র অননুমোদিত ব্যক্তিদের সাথে ভাগ করুন, (D) অ্যাপ্লিকেশনের মাধ্যমে যেকোনো অবৈধ কার্যকলাপ পরিচালনা, বা (E) প্রযোজ্য আইন বা নিয়ম লঙ্ঘন করুন।';

  @override
  String get termsUserResponsibilities => 'ব্যবহারকারী দায়িত্ব';

  @override
  String get termsUserResponsibilitiesContent =>
      'আপনি পুরোপুরি দায়ী: (A) আপনার অ্যাকাউন্টের নিরাপত্তা বজায় রাখা, (B) আপনার অ্যাকাউন্ট ব্যবহার করে পরিচালিত সমস্ত কার্যকলাপ, (C) আপনার সরকারের নীতিমালার সম্মতি নিশ্চিত করা, এবং (D) লেনদেন এবং অর্ডারের সময় সঠিক তথ্য প্রদান করা।';

  @override
  String get termsIntellectualProperty => 'বৌদ্ধিক সম্পত্তি';

  @override
  String get termsIntellectualPropertyContent =>
      'MySupplyCO অ্যাপ্লিকেশনের সমস্ত সামগ্রী, বৈশিষ্ট্য এবং কার্যকারিতা সরকারী এজেন্সির মালিকানাধীন, কপিরাইট এবং অন্যান্য বৌদ্ধিক সম্পত্তি আইন দ্বারা সুরক্ষিত। আপনি পূর্ব লিখিত সম্মতি ছাড়াই কোনো সামগ্রী পুনরুত্পাদন, বিতরণ বা সম্প্রচার করতে পারেন না।';

  @override
  String get termsLimitationOfLiability => 'দায়বদ্ধতার সীমাবদ্ধতা';

  @override
  String get termsLimitationOfLiabilityContent =>
      'MySupplyCO অ্যাপ্লিকেশন \\\"যেমন আছে\\\" ভিত্তিতে প্রদান করা হয়। আমরা গ্যারান্টি দিই না যে পরিষেবা নিরবচ্ছিন্ন বা ত্রুটি-মুক্ত হবে। আইন দ্বারা অনুমোদিত সর্বাধিক পরিমাণে, আমরা আপনার অ্যাপ্লিকেশন ব্যবহার থেকে উত্পন্ন কোনও পরোক্ষ, আকস্মিক, বিশেষ বা পরিণামজনক ক্ষতির জন্য দায়ী নই।';

  @override
  String get termsDataAndInformation => 'ডেটা এবং তথ্য';

  @override
  String get termsDataAndInformationContent =>
      'সমস্ত স্টক ডেটা, অর্ডার এবং লেনদেন রেকর্ড সরকারী এজেন্সির সম্পত্তি। আপনি সরকারী কার্যকর ছাড়া অন্য কোনো উদ্দেশ্যে এই তথ্য অনুলিপি, বিতরণ বা ব্যবহার না করতে সম্মত হন। আমাদের গোপনীয়তা নীতি দেখুন যে আমরা ব্যক্তিগত ডেটা কীভাবে পরিচালনা করি তার বিবরণের জন্য।';

  @override
  String get termsAccountTermination => 'অ্যাকাউন্ট সমাপ্তি';

  @override
  String get termsAccountTerminationContent =>
      'আপনি যদি এই শর্তাবলী লঙ্ঘন করেন, অননুমোদিত ব্যবহারে জড়িত হন, বা সরকারী নিয়ম মেনে চলতে ব্যর্থ হন তবে আমরা আপনার অ্যাকাউন্ট স্থগিত বা সমাপ্ত করার অধিকার সংরক্ষণ করি। সমাপ্তি তাত্ক্ষণিক এবং আরও নোটিশ ছাড়াই হতে পারে।';

  @override
  String get termsModificationsToTerms => 'শর্তাবলীতে সংশোধন';

  @override
  String get termsModificationsToTermsContent =>
      'আমরা যে কোনো সময় এই শর্তাবলী সংশোধন করতে পারি। পরিবর্তনগুলি পোস্টিংয়ের তৎক্ষণাৎ কার্যকর হবে। যে কোনো সংশোধনের পরে অ্যাপ্লিকেশনের অবিরত ব্যবহার আপডেট করা শর্তাবলীর আপনার গ্রহণযোগ্যতা গঠন করে।';

  @override
  String get termsGoverningLaw => 'নিয়ন্ত্রক আইন';

  @override
  String get termsGoverningLawContent =>
      'এই শর্তাবলী ভারতের আইন দ্বারা পরিচালিত এবং নির্মিত হয়। যে কোনো আইনি পদক্ষেপ বা কার্যক্রম উপযুক্ত আদালতের এখতিয়ারের অধীন থাকবে।';

  @override
  String get termsFooterNote =>
      '⚠ সর্বশেষ আপডেট: মার্চ 2026। এই শর্তাবলী MySupplyCO অ্যাপ্লিকেশনের সমস্ত ব্যবহারকারীর জন্য প্রযোজ্য। এই অ্যাপ্লিকেশন ব্যবহার করে, আপনি স্বীকার করেন যে আপনি এই শর্তাবলী পড়েছেন, বুঝেছেন এবং দ্বারা আবদ্ধ হতে সম্মত হন।';
}
