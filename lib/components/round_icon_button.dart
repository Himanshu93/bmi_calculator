import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData childIconData;
  final Function onPressed;

  RoundIconButton({@required this.childIconData, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.onPressed,
      child: Icon(this.childIconData),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kMaterialButtonColor,
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}