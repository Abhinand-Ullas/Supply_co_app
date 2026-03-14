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
}
