
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/input_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF000000),
          scaffoldBackgroundColor: Color(0xFF000000),
          sliderTheme: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white,
            thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 15, disabledThumbRadius: 15),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
            thumbColor: kAccentColor,
            inactiveTrackColor: kInactiveSliderColor,
          )),
      home: InputPage(),
      /* routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(
              bmiResult: CalculatorBrain().calculateBMI(),
              resultText: CalculatorBrain().getResult(),
              interpretation: CalculatorBrain().getInterpretation(),
            ),
      } */
    );
  }
}
