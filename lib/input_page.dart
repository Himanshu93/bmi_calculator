import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const double bottomContainerHeight = 80;
const Color inactiveCardColor = Color(0xFF14171B);
const Color activeCardColor = Color(0xFF212121);
const Color bottomContainerColor = Color(0xFF0080ff);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  
  Gender genderSelector;

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelector = Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: genderSelector == Gender.male ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent('MALE', FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        genderSelector = Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: genderSelector == Gender.female ? activeCardColor : inactiveCardColor,
                      cardChild: IconContent('FEMALE', FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(colour: inactiveCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: inactiveCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour: inactiveCardColor),
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
