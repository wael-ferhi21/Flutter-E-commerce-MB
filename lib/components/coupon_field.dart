import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class CouponField extends StatefulWidget {
  const CouponField({super.key});

  @override
  State<CouponField> createState() => _CouponFieldState();
}

class _CouponFieldState extends State<CouponField> {
  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
      borderSide: BorderSide.none,
    );
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300] as Color),
        borderRadius: BorderRadius.circular(12.0),
      ),
      height: 60,
      width: 330,
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Entrer le code du coupon',
            hintStyle: TextStyle(color: Colors.grey[400]),
            filled: true,
            fillColor: Colors.white,
            border: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            suffixIcon: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff4d6aee),
              ),
              height: 55,
              width: 80,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Entrer',
                  style: Theme.of(context).textTheme.headline5,
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
