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
  Gender selectedGender;

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
                child: ReusableCard(
                  color: selectableCardColor,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                    color: selectedGender == Gender.male
                        ? selectedIconColor
                        : unselectedIconColor,
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: selectableCardColor,
                  onTap: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                    color: selectedGender == Gender.female
                        ? selectedIconColor
                        : unselectedIconColor,
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
