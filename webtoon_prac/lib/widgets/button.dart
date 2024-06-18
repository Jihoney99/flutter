import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;

  const Button(
      {super.key,
      required this.text,
      required this.textColor,
      required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 40,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 17, color: textColor),
        ),
      ),
    );
  }
}
