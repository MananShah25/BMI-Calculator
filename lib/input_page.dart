import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender_card.dart';
import 'reuse_card.dart';

const EndContainerHeight = 80.0;
const ActiveColor = Color(0xFF1B1633);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: ReuseCard(
                    col: ActiveColor,
                    cardChild: GenderCard(
                      genderSymbol: FontAwesomeIcons.mars,
                      genderText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    col: ActiveColor,
                    cardChild: GenderCard(
                      genderSymbol: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseCard(
              col: ActiveColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    col: ActiveColor,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    col: ActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            margin: EdgeInsets.only(top: 10.0),
            height: EndContainerHeight,
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
