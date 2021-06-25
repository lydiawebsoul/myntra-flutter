import 'package:flutter/material.dart';
import 'package:myntra_app/Bottom_tab/catexpansion.dart';
import 'package:myntra_app/shoppingcart.dart';
import 'package:myntra_app/wishlist.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.purple[300],
        title: Text("Categories"),
        actions: <Widget>[
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
      body: SingleChildScrollView(
        child: CategoryExpansionTile(
          key: key(),
        ),
      ),
    );
  }

  dynamic key() => null;
}
