import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:tse/Constans.dart';
import 'package:tse/Screens/welcomPage.dart';
import 'package:tse/Screens/menuPage/favorite.dart';
import 'package:tse/Screens/menuPage/home.dart';
import 'package:tse/Screens/menuPage/Manage/manage.dart';
import 'package:tse/Screens/menuPage/profileFeuture/profile.dart';
import 'package:tse/Screens/menuPage/profileFeuture/profile.dart';

class menuPage extends StatefulWidget {
  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  var _currentIndex = 0;
  final List<Widget> _children = [
    homePageMenu(),
    managePageMenu(),
    favoritePageMenu(),
    profilePageMenu()
  ];

  List _namedPage = ['Home', 'Manage', 'Favorite', 'Profile'];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: bgDark,
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: _currentIndex,
        onTap: (i) {
          setState(
            () => _currentIndex = i,
          );
        },
        items: [
          /// Home
          SalomonBottomBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text("Home"),
              selectedColor: gr,
              unselectedColor: gry,
              activeIcon: Icon(Icons.home)),

          /// Likes
          SalomonBottomBarItem(
              icon: Icon(Icons.done_all_sharp),
              title: Text("Manage"),
              selectedColor: gr,
              unselectedColor: gry,
              activeIcon: Icon(Icons.home)),

          /// Search
          SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text("Favorite"),
              selectedColor: gr,
              unselectedColor: gry,
              activeIcon: Icon(Icons.favorite)),

          /// Profile
          SalomonBottomBarItem(
            icon: Icon(Icons.person_outline_outlined),
            title: Text("Profile"),
            selectedColor: gr,
            activeIcon: Icon(Icons.person),
            unselectedColor: gry,
          ),
        ],
      ),
      body: _children[_currentIndex],
    ));
  }
}
