import 'package:flutter/material.dart';
import 'package:marqueblanche/screens/home_screen.dart';
import 'package:marqueblanche/screens/inscription_screen.dart';
import 'package:marqueblanche/screens/profile_screen.dart';
import 'package:marqueblanche/screens/tab_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff4d6aee),
        accentColor: const Color(0xfffafafa),
        fontFamily: 'Poppins',
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
          headline4: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16),
          bodyText2: TextStyle(fontSize: 10),
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}



