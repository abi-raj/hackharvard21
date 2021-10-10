import 'package:flutter/material.dart';
import 'package:hackharvard21/Screens/Locations/LocationScreen.dart';

import 'Screens/HomeScreen.dart';

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
