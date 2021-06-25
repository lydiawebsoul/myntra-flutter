import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:myntra_app/profile.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Lydia poulin'),
            accountEmail: Text('diyalydi9004@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                // child: Image.asset('assets/images/appicon.jpg'),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(color: Colors.purple[300]),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.category_outlined),
              title: Text(
                'Shop by Categories',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.storefront_outlined),
              title: Text(
                'Theme Stores',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text(
                'Orders',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Text(
                'FAQs',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Text(
                'Contact us',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Text(
                'Legal',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
