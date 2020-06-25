import 'package:bmi/constants.dart';
import 'package:bmi/input_page.dart';
import 'package:bmi/reuseable_widget.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "OVERWEIGHT",
                    style: kResultTextStyle,
                  ),
                  Text(
                    "26.6",
                    style: kBMITextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Your BMI result is quite low, you should eat more!",
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,
                    ),
                  ),
                  Expanded()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
