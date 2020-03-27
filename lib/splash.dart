import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          fit: BoxFit.fitHeight,
          image: AssetImage('assets/logo.png'),
          width: 150.0,
          height: 150.0,
        ),
      ),
    );
  }

  @override
  void initState() {
    Timer(
      Duration(seconds: 4),
          () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          ModalRoute.withName("/HomePage")),
    );
    super.initState();
  }
}
