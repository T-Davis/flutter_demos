import 'package:flutter/material.dart';

const unselectedIconColor = Color(0xFF8E8E99);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: unselectedIconColor,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: unselectedIconColor,
          ),
        )
      ],
    );
  }
}
