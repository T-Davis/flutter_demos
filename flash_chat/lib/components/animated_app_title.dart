import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedAppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TypewriterAnimatedTextKit(
      speed: Duration(milliseconds: 200),
      repeatForever: true,
      text: ['Flash Chat'],
      textStyle: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
