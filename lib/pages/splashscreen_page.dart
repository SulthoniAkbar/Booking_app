import 'dart:async';

import 'package:flutter/material.dart';

import '../themes.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor1,
        body: Center(
          child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/splashscreen.png',
                ),
              ),
            ),
          ),
        ));
  }
}
