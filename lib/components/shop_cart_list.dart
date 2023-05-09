import 'package:flutter/material.dart';
import 'package:marqueblanche/components/cart_shop_item.dart';

class ShopCardList extends StatefulWidget {
  const ShopCardList({super.key});

  @override
  State<ShopCardList> createState() => _ShopCardListState();
}

class _ShopCardListState extends State<ShopCardList> {
  final List<ShopCartItem> cards = [
    ShopCartItem(),
    ShopCartItem(),
    ShopCartItem(),
    ShopCartItem(),
    ShopCartItem(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: ListView.builder(
        shrinkWrap: true,

        itemCount: 5, // use a fixed number of items for testing
        itemBuilder: (context, index) {
          return ShopCartItem();
        },
      ),
    );
  }
}
