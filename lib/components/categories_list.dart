import 'package:flutter/material.dart';
import 'package:marqueblanche/components/category_card.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demo_categories.length,
          (index) => Padding(
            padding: const EdgeInsets.all(5),
            child: CategoryCard(
              title: demo_categories[index].title,
              icon: demo_categories[index].icon,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.press,
  });
  final String title;
  final Icon icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 110,
      child: OutlinedButton(
          onPressed: press,
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
                
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            child: Column(
              children: [
                icon,
                SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline4,
                )
              ],
            ),
          )),
    );
  }
}
