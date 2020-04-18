import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80;
const Color reuseableContainerColor = Color(0xFF14171B);
const Color bottomContainerColor = Color(0xFF0080ff);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: reuseableContainerColor,
                    cardChild: IconContent('MALE', FontAwesomeIcons.mars ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: reuseableContainerColor,
                    cardChild: IconContent('FEMALE', FontAwesomeIcons.venus ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: reuseableContainerColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: reuseableContainerColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reuseableContainerColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}



