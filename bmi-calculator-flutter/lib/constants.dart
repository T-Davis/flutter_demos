library constants;

import 'package:flutter/material.dart';

const selectableCardColor = Color(0xFF1E2032);
const notSelectableCardColor = Color(0xFF101527);
const unselectedIconColor = Color(0xFF8E8E99);
const labelColor = Color(0xFF8E8E99);
const selectedIconColor = Color(0xFFFFFFFF);
const bottomContainerColor = Color(0xFFEA1556);
const double bottomContainerHeight = 80;
const TextStyle numberTextStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50.0,
);

enum Gender { male, female }

class LabelText extends StatelessWidget {
  LabelText({
    @required this.text,
    this.color: labelColor,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
      ),
    );
  }
}
