import 'package:flutter/material.dart';

import '../components/appbar.dart';
import '../components/product_item.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  final List<ProductItem> products = [
    ProductItem(
        title: 'title',
        description: 'description',
        image: 'image',
        prix: 52.0,
        onFavoritePressed: () {}),
    ProductItem(
        title: 'title',
        description: 'description',
        image: 'image',
        prix: 52.0,
        onFavoritePressed: () {}),
    ProductItem(
        title: 'title',
        description: 'description',
        image: 'image',
        prix: 52.0,
        onFavoritePressed: () {}),
    ProductItem(
        title: 'title',
        description: 'description',
        image: 'image',
        prix: 52.0,
        onFavoritePressed: () {})
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(text: "Favories", actions: []),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of columns
              crossAxisSpacing: 16, // spacing between columns
              mainAxisSpacing: 16, // spacing between rows
              childAspectRatio: 0.75, // item aspect ratio
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ProductItem(
                title: product.title,
                description: product.description,
                image: product.image,
                prix: product.prix,
                onFavoritePressed: product.onFavoritePressed,
              );
            },
          ),
        ));
  }
}
