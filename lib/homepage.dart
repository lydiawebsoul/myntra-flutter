import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:custom_navigator/custom_scaffold.dart';
//import 'package:custom_navigator/custom_navigator.dart';
//import 'package:custom_navigator/tab_navigator.dart';
//import 'package:myntra_app/Bottom_tab/categories.dart';
// import 'package:myntra_app/Bottom_tab/explore.dart';
// import 'package:myntra_app/Bottom_tab/studio.dart';
import 'package:myntra_app/Myntra_Home/Navigation_drawer.dart';
//import 'package:myntra_app/Myntra_Home/bottomnavbar.dart';
import 'package:myntra_app/myntra_insider.dart';
import 'package:myntra_app/notifications.dart';
//import 'package:myntra_app/profile.dart';
import 'package:myntra_app/search.dart';
import 'package:myntra_app/shoppingcart.dart';
import 'package:myntra_app/wishlist.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //   debugShowCheckedModeBanner: false,

        // title: "Myntra",
        //appbar
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          actions: <Widget>[
            IconButton(
              icon: Image.asset(
                'assets/appicon.jpg',
                width: 50,
                height: 100,
              ),
              onPressed: () {
                MyntraInsider();
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {
                Search();
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
              ),
              onPressed: () {
                Notifications();
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.favorite_border_outlined,
              ),
              onPressed: () {
                Wishlist();
              },
            ),
            IconButton(
              icon: const Icon(
                Icons.shopping_bag_outlined,
              ),
              onPressed: () {
                Shoppingcart();
              },
            ),
          ],
        ),
        drawer: NavDrawer(),
        //body
        //  return WillPopScope(
        //     onWillPop: () async{
        //       final isFirstRouteInCurrentTab =
        //       !await _navigatorKeys[_currentPage].currentState.maybePop();
        //       if(isFirstRouteInCurrentTab){
        //         if(_currentPage != "Page1" ,1 )
        //        return false;
        //       }
        //     }
        //     return isFirstRouteInCurrentTab;
        // },
        //     child: Scaffold(
        //       body: Stack(
        //          children:<Widget>[
        //             _buildOffstageNavigator("Home"),
        //             _buildOffstageNavigator("Categories"),
        //             _buildOffstageNavigator("Studio"),
        //             _buildOffstageNavigator("Explore"),
        //             _buildOffstageNavigator("Profile"),
        //           ] ,
        //         ) ,
        //      ),
        //   ),
        //bottom navigation

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple[300],
          unselectedItemColor: Colors.black,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              // ignore: deprecated_member_use
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.category_outlined,
              ),

              // ignore: deprecated_member_use
              title: Text("Categories"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv_outlined,
              ),
              // ignore: deprecated_member_use
              title: Text("Studio"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_outlined,
              ),
              // ignore: deprecated_member_use
              title: Text("Explore"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              // ignore: deprecated_member_use
              title: Text("Profile"),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      //  children: <Widget>[
      //    HomePage(),
      //       Categories(),
      //      Studio(),
      //       Explore(),
      //       Myntraprofile(),
      //  ],
    );
  }
}
