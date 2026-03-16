import 'package:flutter/material.dart';
import 'package:supply_co/services/local_storage_service.dart';

/// Provides localization support with dynamic language switching
class LocalizationProvider extends ChangeNotifier {
  Locale _currentLocale = const Locale('en');

  Locale get currentLocale => _currentLocale;

  /// Language code to Locale mapping
  static const Map<String, Locale> supportedLocales = {
    'en': Locale('en'),
    'hi': Locale('hi'),
    'ml': Locale('ml'),
    'gu': Locale('gu'),
    'mr': Locale('mr'),
    'bn': Locale('bn'),
    'ta': Locale('ta'),
    'te': Locale('te'),
  };

  /// Language code to display name mapping
  static const Map<String, String> languageNames = {
    'en': 'English',
    'hi': 'Hindi',
    'ml': 'Malayalam',
    'gu': 'Gujarati',
    'mr': 'Marathi',
    'bn': 'Bengali',
    'ta': 'Tamil',
    'te': 'Telugu',
  };

  LocalizationProvider() {
    _initializeLocale();
  }

  /// Load the preferred language from local storage
  /// This is called synchronously in the constructor to ensure the locale is set before the first build
  void _initializeLocale() {
    final languageCode = StorageService.getPreferredLanguage();
    final locale = supportedLocales[languageCode] ?? const Locale('en');
    _currentLocale = locale;
    // Don't call notifyListeners() here since listeners aren't attached yet
  }

  /// Change the language and save preference
  Future<void> changeLanguage(String languageCode) async {
    if (supportedLocales.containsKey(languageCode)) {
      _currentLocale = supportedLocales[languageCode]!;

      // Save to local storage
      await StorageService.setPreferredLanguage(languageCode);

      // Also update Supabase if user is authenticated
      try {
        final supabaseService = await _getSupabaseServiceIfAvailable();
        if (supabaseService != null) {
          await supabaseService.updateUserLanguagePreference(languageCode);
        }
      } catch (e) {
        print('Error updating Supabase language preference: $e');
      }

      notifyListeners();
    }
  }

  /// Helper to get Supabase service if user is authenticated
  Future<dynamic> _getSupabaseServiceIfAvailable() async {
    try {
      // Import Supabase only if needed
      final supabase = await _loadSupabaseIfAvailable();
      return supabase;
    } catch (_) {
      return null;
    }
  }

  Future<dynamic> _loadSupabaseIfAvailable() async {
    try {
      // This will be used to update the remote DB
      // For now, just return null if not available
      return null;
    } catch (_) {
      return null;
    }
  }
}
