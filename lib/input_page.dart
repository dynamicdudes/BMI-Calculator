import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_icon.dart';
import 'reuseable_widget.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderType selectedGender;

  int defaultHeight = 180;
  int defaultWeight = 26;
  int defaultAge = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  //TODO: MALE CARD
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    colour: selectedGender == GenderType.male
                        ? kActiveCardColor
                        : kInActiveCardColor,
                    cardChild: Center(
                        child: ResuableIcon(
                            textString: "MALE",
                            iconDiplay: FontAwesomeIcons.mars)),
                  ),
                ), // Male Card
                Expanded(
                    //TODO: FEMALE CARD
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = GenderType.female;
                    });
                  },
                  colour: selectedGender == GenderType.female
                      ? kActiveCardColor
                      : kInActiveCardColor,
                  cardChild: Center(
                    child: ResuableIcon(
                      textString: "FEMALE",
                      iconDiplay: FontAwesomeIcons.venus,
                    ),
                  ),
                )),
              ],
            ),
          ), //Male And Female Cards...
          Expanded(
            //TODO: Slide Card
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("HEIGHT", style: kTextStyleProperty),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: <Widget>[
                      Text(
                        defaultHeight.toString(),
                        style: kNumberStyleProperty,
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        "cm",
                        style: kTextStyleProperty,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.white,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24.0)),
                    child: Slider(
                      value: defaultHeight.toDouble(),
                      min: KMinHeight.toDouble(),
                      max: kMaxHeight.toDouble(),
                      onChanged: (double newValue) {
                        setState(() {
                          defaultHeight = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ), //Slider
          Expanded(
            //TODO: Weight Card...
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: kTextStyleProperty,
                        ),
                        Text(
                          defaultWeight.toString(),
                          style: kNumberStyleProperty,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: kMinusIcon,
                              onButtonPressed: () {
                                setState(() {
                                  defaultWeight--;
                                });
                              },
                            ), //Minus Button Clicked..
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: kPlusIcon,
                              onButtonPressed: () {
                                setState(() {
                                  defaultWeight++;
                                });
                              },
                            ) //Plus Button Clicked..
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kTextStyleProperty,
                        ),
                        Text(
                          defaultAge.toString(),
                          style: kNumberStyleProperty,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: kMinusIcon,
                              onButtonPressed: () {
                                setState(() {
                                  defaultAge--;
                                });
                              },
                            ),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                              icon: kPlusIcon,
                              onButtonPressed: () {
                                setState(() {
                                  defaultAge++;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kPinkColor,
            width: double.infinity,
            height: kBottomHeight,
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, @required this.onButtonPressed});

  final IconData icon;
  final Function onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onButtonPressed,
      child: Icon(icon),
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 46.0,
        height: 46.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

enum GenderType {
  male,
  female,
}
