import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wishlist',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wishlistpage'),
        ),
        body: Center(
          child: Text('Wishlist'),
        ),
      ),
    );
  }
}
