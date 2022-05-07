import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:vr/material_app/view.dart';

main() async {
  // if your flutter > 1.7.8 :  ensure flutter activated
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeType: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );

  runApp(
    LocalizedApp(
      child: const MyApp(),
    ),
  );
}
