import 'package:flutter/material.dart';
import 'package:hackharvard21/Screens/Locations/LocationScreen.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/Routines/notes/AudioHome.dart';
import 'Screens/Routines/notes/NotesScreen.dart';
import 'Screens/Routines/notes/TextHome.dart';
import 'Screens/Routines/notes/VideoHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(95, 65, 165, 1),
        accentColor: Color.fromRGBO(95, 65, 165, 1),
      ),
      home: MainPage(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/location': (context) => LocationsPage(),
        '/notes': (context) => NotesPage(),
        '/textNotes': (context) => TextNotesPage(),
        '/videoNotes': (context) => VideoNotesPage(),
        '/audioNotes': (context) => AudioNotesPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
