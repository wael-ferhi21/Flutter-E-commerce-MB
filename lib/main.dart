import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marqueblanche/View/home_screen.dart';
import 'package:marqueblanche/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
          headline5: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: const Color(0xffffffff),
            letterSpacing: 1.0000000305175782,
            fontWeight: FontWeight.w700,
            height: 1.7857142857142858,
          ),
          bodyText1: TextStyle(fontSize: 16),
          bodyText2: TextStyle(fontSize: 10),
          button: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      title: 'E commerce',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
