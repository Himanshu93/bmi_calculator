import 'package:flutter/material.dart';

const TextStyle labelTextStyle =
    TextStyle(fontSize: 18.0, color: Color(0xFF0080ff));

class IconContent extends StatelessWidget {
  final String gender;
  final IconData genderIcon;

  IconContent(this.gender, this.genderIcon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
          color: Colors.lightBlue.shade100,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
