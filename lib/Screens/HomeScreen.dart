import 'package:flutter/material.dart';
import 'package:hackharvard21/Screens/Main/MainScreen.dart';
import 'package:hackharvard21/Screens/Contact/ContactScreen.dart';
import 'package:hackharvard21/Screens/Settings/SettingsScreen.dart';
import 'package:hackharvard21/Widgets/home/BottomAppBarWidget.dart';

import 'Routines/RoutineScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 3;
  var _children = [
    HomePage(),
    RoutinePage(),
    RoutinePage(),
    ContactsPage(),
    SettingsPage(),
  ];

  void onTapped(int index) {
    if (index == 2) {
      index--;
    }

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.location_on_outlined,
            size: 25,
          ),
          onPressed: () {
            print('unsrop');
            Navigator.pushNamed(context, '/location');
          },
        ),
        bottomNavigationBar:
            bottomAppBarWidget(_currentIndex, onTapped, context));
  }
}
