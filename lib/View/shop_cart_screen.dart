import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:marqueblanche/components/appbar.dart';
import 'package:marqueblanche/components/coupon_field.dart';
import '../components/cart_shop_item.dart';

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
      body: SingleChildScrollView(
        child: Column(children: [
          ShopCartItem(),
          ShopCartItem(),
          ShopCartItem(),
          SizedBox(
            height: 20,
          ),
          CouponField(),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 280,
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 46, 66, 199),
                      Theme.of(context).primaryColor,
                    ])),
            child: Text(
              'Commander',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ]),
      ),
    );
  }
}
