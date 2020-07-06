import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const selectableCardColor = Color(0xFF1E2032);
const notSelectableCardColor = Color(0xFF101527);
const unselectedIconColor = Color(0xFF8E8E99);
const selectedIconColor = Color(0xFFFFFFFF);
const bottomContainerColor = Color(0xFFEA1556);
const double bottomContainerHeight = 80;

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleIconColor = unselectedIconColor;
  Color femaleIconColor = unselectedIconColor;
  bool maleCardActive = false;
  bool femaleCardActive = false;

  void updateSelectedCard(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardActive) {
        maleCardActive = false;
        maleIconColor = unselectedIconColor;
      } else {
        maleCardActive = true;
        femaleCardActive = false;
        maleIconColor = selectedIconColor;
        femaleIconColor = unselectedIconColor;
      }
    } else {
      if (femaleCardActive) {
        femaleCardActive = false;
        femaleIconColor = unselectedIconColor;
      } else {
        femaleCardActive = true;
        maleCardActive = false;
        femaleIconColor = selectedIconColor;
        maleIconColor = unselectedIconColor;
      }
    }
  }

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
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateSelectedCard(Gender.male);
                    });
                  },
                  child: ReusableCard(
                    color: selectableCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                      color: maleIconColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateSelectedCard(Gender.female);
                    });
                  },
                  child: ReusableCard(
                    color: selectableCardColor,
                    child: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE',
                      color: femaleIconColor,
                    ),
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: ReusableCard(
              color: notSelectableCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: notSelectableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: notSelectableCardColor,
                  ),
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
