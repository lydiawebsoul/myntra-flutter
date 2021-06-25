import 'package:flutter/material.dart';
//import 'package:myntra_app/Myntra_Home/offer.dart';
import 'package:myntra_app/body.dart';
// import 'package:myntra_app/components/horizontal_listview.dart';
// import 'package:myntra_app/components/products.dart';
import 'package:myntra_app/Bottom_tab/bottomnav.dart';
//import 'package:myntra_app/Bottom_tab/categories.dart';
//import 'package:myntra_app/Bottom_tab/explore.dart';
//import 'package:myntra_app/Bottom_tab/studio.dart';
import 'package:myntra_app/Myntra_Home/Navigation_drawer.dart';
// import 'package:myntra_app/body.dart';
import 'package:myntra_app/constants.dart';
import 'package:myntra_app/myntra_insider.dart';
//import 'package:myntra_app/profile.dart';
import 'package:myntra_app/search.dart';
import 'package:myntra_app/shoppingcart.dart';
import 'package:myntra_app/wishlist.dart';
import 'package:myntra_app/notifications.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Myntra",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: NavDrawer(),
          appBar: buildAppBar(),
          body: Body(),
          bottomNavigationBar: BottomNavBar(),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: IconButton(
        icon: Image.asset(
          'assets/images/title.jpg',
          width: 80.0,
          height: 80.0,
        ),
        onPressed: () {
          MyntraInsider();
        },
      ),
      backgroundColor: Colors.purple[300],
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.search,
          ),
          onPressed: () {
            Search();
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none_outlined),
          onPressed: () {
            Notifications();
          },
        ),
        IconButton(
          icon: const Icon(Icons.favorite_border_outlined),
          onPressed: () {
            Wishlist();
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_bag_outlined),
          onPressed: () {
            Shoppingcart();
          },
        ),
        SizedBox(
          width: kDefaulftPadding / 2,
        ),
      ],
    );
  }
}
