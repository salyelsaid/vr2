import 'package:flutter/material.dart';
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
      title: "vr project",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
