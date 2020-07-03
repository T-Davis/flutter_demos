import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090D22),
        accentColor: Color(0xFFEB1555),
        scaffoldBackgroundColor: Color(0xFF090D22),
      ),
      home: InputPage(),
    );
  }
}
