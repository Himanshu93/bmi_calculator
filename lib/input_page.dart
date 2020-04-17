import 'package:flutter/material.dart';

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
                  child: ReusableCard(colour: reuseableContainerColor),
                ),
                Expanded(
                  child: ReusableCard(colour: reuseableContainerColor),
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

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  ReusableCard({@required this.colour, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: this.colour,
      ),
    );
  }
}
