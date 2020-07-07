library components;

import 'package:flutter/material.dart';

import 'constants.dart';

class LabelText extends StatelessWidget {
  LabelText({
    @required this.text,
    this.color: labelColor,
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: color,
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      fillColor: Color(0xFF1C2032),
      elevation: 2.0,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: largeButtonTextStyle,
        )),
        color: bottomContainerColor,
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const IconContent({this.icon, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: color,
        ),
        SizedBox(
          height: 15,
        ),
        LabelText(
          text: text,
          color: color,
        ),
      ],
    );
  }
}

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

class Bmi {
  static double calculate(int height, int weight) {
    return weight / (height / 100 * 2);
  }

  static String result(double bmi) {
    if (bmi > 25) {
      return 'overweight';
    } else if (bmi > 18.5) {
      return 'normal weight';
    }
    return 'underweight';
  }

  static String interpret(double bmi) {
    if (bmi > 25) {
      return 'You have a higher than normal body weight.\nCheck with your doctor for advice.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight.\nGood for you!';
    }
    return 'You have a lower than normal body weight.\nCheck with your doctor for advice';
  }
}
