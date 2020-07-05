import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80;
const selectableCardColor = Color(0xFF1E2032);
const notSelectableCardColor = Color(0xFF101527);
const bottomContainerColor = Color(0xFFEA1556);
const unselectedIconColor = Color(0xFF8E8E99);

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
                child: Card(
                  color: selectableCardColor,
                  child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: selectableCardColor,
                  child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: Card(color: notSelectableCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Card(color: notSelectableCardColor),
                ),
                Expanded(
                  child: Card(color: notSelectableCardColor),
                )
              ],
            ),
          ),
          Container(
            child: FlatButton(
              color: bottomContainerColor,
              onPressed: () {
                print('pressed');
              },
            ),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({this.icon, this.text});

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
          text,
          style: TextStyle(
            fontSize: 18,
            color: unselectedIconColor,
          ),
        )
      ],
    );
  }
}

class Card extends StatelessWidget {
  final Color color;
  final Widget child;

  const Card({@required this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
