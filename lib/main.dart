import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

// 🟢 NEW IMPORTS FOR NOTIFICATIONS
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:supply_co/core_pages/homepage.dart';
import 'package:supply_co/intro_pages/auth_wrapper.dart';
import 'package:supply_co/intro_pages/splashscreen.dart';
import 'package:supply_co/services/local_storage_service.dart';
import 'package:supply_co/services/notification_service.dart';
import 'package:supply_co/services/localization_provider.dart';
import 'package:supply_co/generated_localizations/app_localizations.dart';

// global navigator key so auth listener can navigate
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// 🟢 1. TOP-LEVEL BACKGROUND HANDLER (Must be outside any class)
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("✅ Background message received: ${message.messageId}");
}

// 🟢 2. LOCAL NOTIFICATIONS PLUGIN INSTANCE
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('main(): widgets binding initialized');

  try {
    await StorageService.init(); // Initialize local storage before runApp
    print('main(): StorageService.init completed');

    // 1. Load the .env file
    await dotenv.load(fileName: ".env");
    print('main(): .env loaded  url=${dotenv.env['SUPABASE_URL']}');

    // 2. Initialize Supabase using the environment variables
    await Supabase.initialize(
      url: dotenv.env['SUPABASE_URL']!,
      anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
    );
    print('main(): Supabase initialized');

    // Initialize Firebase before using any Firebase services
    await Firebase.initializeApp();
    print('main(): Firebase.initializeApp completed');

    // 🟢 3. REGISTER BACKGROUND HANDLER
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 🟢 4. CREATE ANDROID NOTIFICATION CHANNEL
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_channel', // id
      'Restock Notifications', // title
      description: 'This channel is used for important restock alerts.', // description
      importance: Importance.max,
      playSound: true,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

// 🟢 5. INITIALIZE LOCAL NOTIFICATIONS
    const InitializationSettings initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'), 
      iOS: DarwinInitializationSettings(),
    );
    await flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings, // ✅ Changed to 'settings:'
    );

    // 🟢 6. REQUEST PERMISSION (Crucial for Android 13+)
    await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    // 🟢 7. FOREGROUND HANDLER (FIXED SYNTAX FOR v20+)
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
          id: notification.hashCode,              // Fixed named parameter
          title: notification.title,              // Fixed named parameter
          body: notification.body,                // Fixed named parameter
          notificationDetails: NotificationDetails( // Fixed named parameter
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: '@mipmap/ic_launcher',
              importance: Importance.max,
              priority: Priority.high,
            ),
          ),
        );
      }
    });

    // 8. Start Notification Service
    NotificationService().initNotifications();
    print('main(): NotificationService init called');

    // Listen for auth state changes globally
    Supabase.instance.client.auth.onAuthStateChange.listen((data) async {
      final event = data.event;
      print('auth state change: $event');
      if (event == AuthChangeEvent.signedIn) {
        StorageService.setGuestMode(false);
        final user = data.session?.user;
        if (user != null) {
          final languageCode = StorageService.getPreferredLanguage();
          try {
            await Supabase.instance.client
                .from('user_details')
                .update({'preferred_language': languageCode})
                .eq('id', user.id);
          } catch (e) {
            print('Error syncing language: $e');
          }
        }
        navigatorKey.currentState?.pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage()),
          (route) => false,
        );
      }
    });
  } catch (e, st) {
    print('main(): initialization error: $e\n$st');
  }

  print('main(): calling runApp');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyApp.build fired');
    return ChangeNotifierProvider(
      create: (_) => LocalizationProvider(),
      child: Consumer<LocalizationProvider>(
        builder: (context, localizationProvider, _) {
          return MaterialApp(
            navigatorKey: navigatorKey,
            title: "Supplyco-project",
            debugShowCheckedModeBanner: false,

            // Localization settings
            locale: localizationProvider.currentLocale,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en'), // English
              Locale('hi'), // Hindi
              Locale('ml'), // Malayalam
              Locale('gu'), // Gujarati
              Locale('mr'), // Marathi
              Locale('bn'), // Bengali
              Locale('ta'), // Tamil
              Locale('te'), // Telugu
            ],

            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF1B4D3E),
              ),
              useMaterial3: true,
            ),
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}