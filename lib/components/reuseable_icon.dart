import 'package:flutter/material.dart';
import '../constants.dart';

class ResuableIcon extends StatelessWidget {
  ResuableIcon({@required this.textString, this.iconDiplay});

  final IconData iconDiplay;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(iconDiplay, size: 80.0),
        SizedBox(height: 15.0),
        Text(
          textString,
          style: kTextStyleProperty,
        ),
      ],
    );
  }
}
