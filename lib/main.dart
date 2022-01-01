import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:with_retro_firebase/core/init/service/notification.dart';
import 'package:with_retro_firebase/environment/config/config_reader.dart';
import 'package:with_retro_firebase/locator.dart';
import 'core/init/navigation/route/navigation_route.dart';
import 'core/init/navigation/service/navigation_service.dart';
import 'core/init/theme/theme_change_provider.dart';
import 'core/init/lang/language_change_provider.dart';
import 'core/init/notifier/providers.dart';
import 'generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  log('A bg message just showed up :  ${message.messageId}');
}

Future<void> mainCommon(String env) async {
  locator();
  await _init(env);
  await Configreader.getInitiliaze(env);
  await Hive.initFlutter();
  await Firebase.initializeApp();
  FirebaseMessaging.instance.requestPermission();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  FirebaseNotification.instance.implementations();
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: const MyApp(),
    ),
  );
}

Future<void> _init(env) async {
  WidgetsFlutterBinding.ensureInitialized();
  switch (env) {
    case 'dev':
      return log("development");
    case 'prod':
      return log("prod");
    default:
      return log("message");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //commit test
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //i10n language provider
      locale: Provider.of<LanguageChangeProvider>(context, listen: true)
          .currentLocale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      //custom theme provider
      theme: ThemeProvider.lightTheme,
      darkTheme: ThemeProvider.darkTheme,
      themeMode: Provider.of<ThemeProvider>(context, listen: true).currentTheme,
      //navigator service init
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
