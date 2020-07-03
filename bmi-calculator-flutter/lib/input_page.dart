import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Card(color: Color(0xFF1E2032)),
                ),
                Expanded(
                  child: Card(color: Color(0xFF1E2032)),
                )
              ],
            )),
            Expanded(
              child: Card(color: Color(0xFF1E2032)),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Card(color: Color(0xFF1E2032)),
                ),
                Expanded(
                  child: Card(color: Color(0xFF1E2032)),
                )
              ],
            ))
          ],
        ));
  }
}

class Card extends StatelessWidget {
  final Color color;
  Card({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
