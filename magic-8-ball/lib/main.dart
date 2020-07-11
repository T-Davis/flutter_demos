import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue.shade700,
          ),
          body: AskMeAnything(),
        ),
      ),
    );

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade300,
      child: Center(
        child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onPressed: () {
            setState(() {
              int num = Random().nextInt(5) + 1;
              while (num == ballNumber) {
                num = Random().nextInt(5) + 1;
              }
              ballNumber = num;
            });
          },
        ),
      ),
    );
  }
}
