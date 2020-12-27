import 'package:flutter/material.dart';

import '../constants.dart';

class TheBottomButton extends StatelessWidget {
  final Function onTab;
  final String buttonTitle;

  TheBottomButton({this.onTab, this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
      ),
    );
  }
}
