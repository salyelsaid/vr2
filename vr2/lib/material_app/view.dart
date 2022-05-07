import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:vr/screens/splash/view.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: ((context, child) =>
          Directionality(textDirection: TextDirection.rtl, child: child)),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.activeLocale, // Active locale
      supportedLocales: translator.locals(), // Locals list
    );
  }
}
