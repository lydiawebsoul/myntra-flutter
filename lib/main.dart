// @dart=2.9

import 'package:flutter/material.dart';

import 'splashscreen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Myntra",
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Splashscreen(),
    );
  }
}
