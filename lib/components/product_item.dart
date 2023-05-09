import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String title;
  final String description;
  final String image;
  final double prix;
  final VoidCallback? onFavoritePressed;

  ProductItem({
    required this.title,
    required this.description,
    required this.image,
    required this.prix,
    required this.onFavoritePressed,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.grey)),
      width: 150,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
          ),
          Image.network('image'),
          SizedBox(height: 25),
          Text('Chemise ', style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          Text('description: chemise rayée'),
          SizedBox(height: 10),
          Text('prix: 200 TND'),
        ],
      ),
    );
  }
}
