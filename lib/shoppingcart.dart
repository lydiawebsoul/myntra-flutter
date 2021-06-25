import 'package:flutter/material.dart';

class Shoppingcart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'shopping cart',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shoppingcartpage'),
        ),
        body: Center(
          child: Text('shopping cart'),
        ),
      ),
    );
  }
}
