import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'reuse_card.dart';
import 'const_variables.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    col: gen == Gender.male ? kActiveColor : kInactiveColor,
                    cardChild: GenderCard(
                      genderSymbol: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                    onClick: () {
                      setState(() {
                        gen = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    col: gen == Gender.female ? kActiveColor : kInactiveColor,
                    cardChild: GenderCard(
                      genderSymbol: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                    onClick: () {
                      setState(() {
                        gen = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              col: kInactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '100',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'cm',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    col: kInactiveColor,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    col: kInactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kEndContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: kEndContainerHeight,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
