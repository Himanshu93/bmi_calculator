import 'package:flutter/material.dart';

import 'constants.dart';

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
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
