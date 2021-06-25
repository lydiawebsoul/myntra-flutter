import 'package:flutter/material.dart';

class MyntraInsider extends StatefulWidget {
  @override
  _MyntraInsiderState createState() => _MyntraInsiderState();
}

class _MyntraInsiderState extends State<MyntraInsider> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Myntra_insider"),
      ),
      body: new Center(
        child: new Text("This is Myntra_insider"),
      ),
    );
  }
}
