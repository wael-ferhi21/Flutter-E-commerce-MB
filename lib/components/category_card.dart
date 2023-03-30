import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Category {
  final String title;
  final Icon icon;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: Icon(Icons.restaurant),
    title: "Nouriture",
  ),
  Category(
    icon: Icon(
      LineAwesomeIcons.shopping_bag,
      color: Colors.red[400],
    ),
    title: "Vétements",
  ),
  Category(
    icon: Icon(
      LineAwesomeIcons.car,
      color: Colors.purple[400],
    ),
    title: "Voiture",
  ),
  Category(
    icon: Icon(
      Icons.stroller,
      color: Colors.orange[400],
    ),
    title: "Bébé",
  ),
];
