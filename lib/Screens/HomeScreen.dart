import 'package:flutter/material.dart';
import 'package:hackharvard21/Screens/Main/MainScreen.dart';
import 'package:hackharvard21/Screens/Notes/NotesScreen.dart';
import 'package:hackharvard21/Screens/Settings/SettingsScreen.dart';

import 'Routines/RoutineScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  var _children = [
    HomePage(),
    RoutinePage(),
    NotesPage(),
    SettingsPage(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: 'Routine',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contacts',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ]),
    );
  }
}
