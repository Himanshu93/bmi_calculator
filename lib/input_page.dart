import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/reusable_card.dart';
import 'constants.dart';
import 'icon_content.dart';

enum Gender { male, female }
enum CalcType { plus, minus }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender genderSelector;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelector = Gender.male;
                      });
                    },
                    colour: genderSelector == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent('MALE', FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        genderSelector = Gender.female;
                      });
                    },
                    colour: genderSelector == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent('FEMALE', FontAwesomeIcons.venus),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              childIconData: FontAwesomeIcons.minus,
                              calcWeight: (){
                                setState(() {
                                  this.weight--;
                                });
                              } ,  
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              childIconData: FontAwesomeIcons.plus,
                              calcWeight: (){
                                setState(() {
                                  this.weight++;
                                });
                              } ,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(colour: kInactiveCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            height: kBottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final IconData childIconData;
  final Function calcWeight;

  RoundIconButton({this.childIconData, this.calcWeight});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: this.calcWeight,
      child: Icon(this.childIconData),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kMaterialButtonColor,
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}
