import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vr/screens/introduction/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const AppIntro()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
       backgroundColor: const Color.fromRGBO(38, 38, 38, 0.4),
        body: Center(
      child: Image.asset(
        "assets/images/white logo (1).png",
        height: 300,
      ),
    ));
  }
}
