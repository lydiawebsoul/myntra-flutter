import 'package:flutter/material.dart';

class Categorylist extends StatefulWidget {
  @override
  _CategorylistState createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  @override
  Widget build(BuildContext context) {
    Widget catList = new Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
            Container(
              width: 160.0,
              color: Colors.pink,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
          ],
        ));
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          catList,
        ],
      ),
    );
  }
}
