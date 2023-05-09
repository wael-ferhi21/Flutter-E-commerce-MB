import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPress;
  final Color clr1, clr2, clr3;
  final double h, w;

  const Button(
      {required this.buttonText,
      required this.onPress,
      required this.clr1,
      required this.clr2,
      required this.clr3,
      required this.h,
      required this.w});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          alignment: Alignment.center,
          backgroundColor: MaterialStateProperty.all<Color>(clr1),
          foregroundColor: MaterialStateProperty.all<Color>(clr2),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: clr3),
            ),
          ),
          maximumSize: MaterialStateProperty.all<Size>(Size(h, w)),
          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(10.0)),
        ),
        child: Text(
          buttonText,
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
