import 'package:bmi_calculator/inactive_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'reuse_card.dart';
import 'const_variables.dart';
import 'dart:math';
import 'result_page.dart';

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
  int height = 122;
  int weight = 70;
  int age = 35;
  // double val = 1.0;

  double bmi(int h, int w) {
    return (w / pow(h / 100, 2));
  }

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
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    onChanged: (double value) {
                      setState(() {
                        height = value.round();
                        // print(value);
                      });
                    },
                    min: 122.0,
                    max: 213.0,
                    // label: 'height',
                    // mouseCursor: MouseCursor.uncontrolled,
                    // thumbColor: Colors.red,
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
                    cardChild: InactiveCard(
                      onTapLeft: () {
                        setState(() {
                          weight--;
                        });
                      },
                      onTapRight: () {
                        setState(() {
                          weight++;
                        });
                      },
                      labelText: 'WEIGHT',
                      variableValue: weight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    col: kInactiveColor,
                    cardChild: InactiveCard(
                      onTapLeft: () {
                        setState(() {
                          age--;
                        });
                      },
                      onTapRight: () {
                        setState(() {
                          age++;
                        });
                      },
                      labelText: 'AGE',
                      variableValue: age,
                    ),
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
            child: TextButton(
              onPressed: () {
                print(height);
                print(weight);
                print(bmi(height, weight));
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ResultPage(
                    bmiValue: bmi(height, weight),
                  );
                }));
              },
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
