import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
              ),
              GButton(
                icon: Icons.favorite_border,
                text: "Favoris",
              ),
              GButton(
                icon: Icons.list,
                text: "Categories",
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: "Panier",
                onPressed: () {
                  Navigator.of(context).pushNamed('panier');
                },
              ),
              GButton(
                icon: Icons.person,
                text: "Profile",
                onPressed: () {
                  Navigator.of(context).pushNamed('profile');
                },
              ),
            ]),
      ),
    );
  }
}
