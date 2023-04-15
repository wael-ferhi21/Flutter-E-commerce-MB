import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Column(
          children: [
            Container(
              height: 80,
              width: 80,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
          ],
        ),
        const Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
          size: 60,
        ),
        const SizedBox(
          height: 20,
          width: 20,
        ),
      ],
    );
  }
}
