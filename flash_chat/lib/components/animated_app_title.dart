import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedAppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
    double multiplier = 6.5;
    return TypewriterAnimatedTextKit(
      speed: Duration(milliseconds: 200),
      repeatForever: true,
      text: ['Flash Chat'],
      textStyle: TextStyle(
        fontSize: multiplier * unitHeightValue,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
