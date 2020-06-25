import 'package:flutter/material.dart';

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
