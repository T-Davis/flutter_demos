import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Function onTap;
  final Widget child;

  const ReusableCard({@required this.color, this.onTap, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
