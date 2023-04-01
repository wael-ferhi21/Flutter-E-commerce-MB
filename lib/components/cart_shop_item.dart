import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ShopCartItem extends StatefulWidget {
  const ShopCartItem({super.key});

  @override
  State<ShopCartItem> createState() => _ShopCartItemState();
}

class _ShopCartItemState extends State<ShopCartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300] as Color),
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Product Name",
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  "25.00 TND",
                  style: Theme.of(context).textTheme.headline2,
                )
              ],
            ),
          ),
          //Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.delete,
                  color: Color(0xff222d61),
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xff4d6aee),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        CupertinoIcons.add,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("01"),
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xff4d6aee),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
