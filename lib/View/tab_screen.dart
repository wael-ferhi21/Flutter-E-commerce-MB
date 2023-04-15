import 'package:flutter/material.dart';

import 'package:marqueblanche/View/inscription_screen.dart';
import 'package:marqueblanche/View/login_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff4d6aee),
          bottom: TabBar(tabs: [
            Tab(
              text: "Inscrivez-vous",
            ),
            Tab(
              text: "Se connecter",
            ),
          ]),
        ),
        body: TabBarView(children: [
          InscriptionScreen(),
          LoginScreen(),
        ]),
      ),
    );
  }
}
