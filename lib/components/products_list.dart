import 'package:flutter/material.dart';
import 'package:marqueblanche/components/product_item.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
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
    return GridView.builder(
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
    );
  }
}
