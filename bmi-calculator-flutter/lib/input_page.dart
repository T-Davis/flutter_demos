import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';

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
