import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF323244);
const bottomContainerColor = Colors.pink;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                      cardChild: IconContent(iconData: FontAwesomeIcons.mars,label: 'MALE',),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                      cardChild: IconContent(iconData: FontAwesomeIcons.venus,label: 'FEMALE',),

                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        cardColor: activeCardColor,
                      ),
                    )
                  ],
                )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: activeCardColor,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}