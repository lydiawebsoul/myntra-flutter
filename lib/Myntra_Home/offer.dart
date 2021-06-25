import 'dart:ui';

import 'package:flutter/material.dart';

class OfferCorner extends StatefulWidget {
  @override
  _OfferCornerState createState() => _OfferCornerState();
}

class _OfferCornerState extends State<OfferCorner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            GestureDetector(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.redAccent,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Under 999/ Store",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red[900],
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Flat 60% off",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.orange[400],
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Buy 1 Get 1 Free",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
