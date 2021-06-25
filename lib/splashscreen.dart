import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myntra_app/home.dart';
//import 'package:myntra_app/homepage.dart';
//import 'package:myntra_app/main.dart';

class Splashscreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 500,
          width: 500,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
