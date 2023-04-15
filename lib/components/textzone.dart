import 'package:flutter/material.dart';

class TextZone extends StatelessWidget {
  final String title;
  final Icon icon1;
  bool isPassword = false;

  TextZone({
    required this.title,
    required this.icon1,
    required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
          prefixIcon: icon1,
          hintText: title,
          border: InputBorder.none,
          fillColor: Color(0xffeeeeee),
          filled: true),
    );
  }
}
