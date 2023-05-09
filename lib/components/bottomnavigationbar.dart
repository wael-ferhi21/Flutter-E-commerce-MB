import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../View/favourite_scrren.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: GNav(
            gap: 10,
            color: Theme.of(context).primaryColor,
            activeColor: Theme.of(context).primaryColor,
            tabBackgroundColor: Colors.grey.shade100,
            padding: EdgeInsets.all(10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: "Acheter",
                onPressed: () {
                 Get.toNamed('/home', arguments: 'hello');
                },
              ),
              GButton(
                icon: Icons.favorite_border,
                text: "Favorites",
                onPressed: () {
                  Get.toNamed('/favourites', arguments: 'hello');
                },
              ),
              GButton(
                icon: Icons.list,
                text: "Categories",
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: "Panier",
                onPressed: () {
                  Get.toNamed('/panier', arguments: 'hello');
                },
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
                onPressed: () {
               Get.toNamed('/profile', arguments: 'hello');
                },
              ),
            ]),
      ),
    );
  }
}
