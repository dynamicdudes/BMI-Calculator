import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.onTap});

  final String buttonText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kLargeButtonText,
          ),
        ),
        padding: EdgeInsets.only(bottom: 10.0),
        color: kPinkColor,
        width: double.infinity,
        height: kBottomHeight,
      ),
    );
  }
}
