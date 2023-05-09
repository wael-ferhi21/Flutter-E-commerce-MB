import 'package:flutter/material.dart';

import 'package:marqueblanche/components/appbar.dart';
import 'package:marqueblanche/components/button.dart';
import 'package:marqueblanche/components/coupon_field.dart';
import 'package:marqueblanche/components/shop_cart_list.dart';

class ShopCartScreen extends StatefulWidget {
  const ShopCartScreen({super.key});

  @override
  State<ShopCartScreen> createState() => _ShopCartScreenState();
}

class _ShopCartScreenState extends State<ShopCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "Panier", actions: []),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ShopCardList(),
          SizedBox(height: 20),
          CouponField(),
          SizedBox(height: 30),
          Container(
            child: Button(
                buttonText: 'Commander',
                onPress: () {},
                clr1: Theme.of(context).primaryColor,
                clr2: Theme.of(context).accentColor,
                clr3: Colors.transparent,
                h: 100,
                w: 200),
          )
        ],
      ),
    );
  }
}
