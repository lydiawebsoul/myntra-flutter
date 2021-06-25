import 'package:flutter/material.dart';
import 'package:myntra_app/search.dart';
import 'package:myntra_app/shoppingcart.dart';
import 'package:myntra_app/wishlist.dart';

class Flats extends StatefulWidget {
  @override
  _FlatsState createState() => _FlatsState();
}

class _FlatsState extends State<Flats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purple[300],
        title: Text("Women Footwear"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              Search();
            },
          ),
          IconButton(
            icon:
                const Icon(Icons.favorite_border_outlined, color: Colors.white),
            onPressed: () {
              Wishlist();
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {
              Shoppingcart();
            },
          ),
        ],
      ),
      body: new ListView(
        children: <Widget>[
          Container(
            height: 300.0,
          )
        ],
      ),
    );
  }
}
