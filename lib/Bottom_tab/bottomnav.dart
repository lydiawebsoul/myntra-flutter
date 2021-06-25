import 'package:flutter/material.dart';
import 'package:myntra_app/Bottom_tab/categories.dart';
import 'package:myntra_app/Bottom_tab/explore.dart';
import 'package:myntra_app/Bottom_tab/studio.dart';
import 'package:myntra_app/home.dart';
import 'package:myntra_app/profile.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _bottomTabPages = <Widget>[
      Home(),
      Categories(),
      Studio(),
      Explore(),
      Myntraprofile(),
    ];
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.category_outlined), label: 'Categories'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.live_tv_outlined), label: 'Studio'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined), label: 'Explore'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline), label: 'Profile'),
    ];
    assert(_bottomTabPages.length == _bottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
    return Scaffold(
      body: _bottomTabPages[_selectedIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
