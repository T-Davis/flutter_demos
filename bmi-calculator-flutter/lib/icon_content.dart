import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconContent({this.icon, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: color,
        ),
        SizedBox(
          height: 15,
        ),
        LabelText(
          text: text,
          color: color,
        ),
      ],
    );
  }
}

//class LabelText extends StatelessWidget {
//  const LabelText({
//    @required this.label,
//    this.color,
//  });
//
//  final String label;
//  final Color color;
//
//  @override
//  Widget build(BuildContext context) {
//    return Text(
//      label,
//      style: TextStyle(
//        fontSize: 18,
//        color: color,
//      ),
//    );
//  }
//}
