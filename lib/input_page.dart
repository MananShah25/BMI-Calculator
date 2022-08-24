import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'reuse_card.dart';

const endContainerHeight = 80.0;
const activeColor = Color(0xFF111328);
const inactiveColor = Color(0xFF1B1633);
const endContainerColor = Colors.pinkAccent;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveColor;
  Color femaleColor = inactiveColor;

  void update(Gender g) {
    if (g == Gender.male) {
      if (maleColor == activeColor) {
        maleColor = inactiveColor;
      } else {
        maleColor = activeColor;
        femaleColor = inactiveColor;
      }
    } else {
      if (femaleColor == activeColor) {
        femaleColor = inactiveColor;
      } else {
        femaleColor = activeColor;
        maleColor = inactiveColor;
      }
    }
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // maleColor = activeColor;
                        // femaleColor = inactiveColor;
                        update(Gender.male);
                      });
                    },
                    child: ReuseCard(
                      col: maleColor,
                      cardChild: GenderCard(
                        genderSymbol: FontAwesomeIcons.mars,
                        genderText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        // femaleColor = activeColor;
                        // maleColor = inactiveColor;
                        update(Gender.female);
                      });
                    },
                    child: ReuseCard(
                      col: femaleColor,
                      cardChild: GenderCard(
                        genderSymbol: FontAwesomeIcons.venus,
                        genderText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              col: inactiveColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    col: inactiveColor,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    col: inactiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: endContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: endContainerHeight,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
