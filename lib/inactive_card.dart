import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'const_variables.dart';
import 'round_action_button.dart';

class InactiveCard extends StatelessWidget {
  // const InactiveCard({Key? key}) : super(key: key);
  InactiveCard(
      {@required this.labelText,
      @required this.variableValue,
      @required this.onTapLeft,
      @required this.onTapRight});

  final String labelText;
  int variableValue;
  final Function onTapLeft;
  final Function onTapRight;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          labelText,
          style: kLabelStyle,
        ),
        Text(
          variableValue.toString(),
          style: kNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.add_circle,
            // ),
            RoundActionButton(
              icon: FontAwesomeIcons.minus,
              onClick: onTapLeft,
            ),
            // onPressed: () {},
            // child: Icon(
            //   Icons.remove,
            //   color: Colors.white,
            // ),
            // hoverColor: Colors.pinkAccent,
            SizedBox(
              width: 20.0,
            ),
            RoundActionButton(
              icon: FontAwesomeIcons.plus,
              onClick: onTapRight,
            ),
            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Icon(
            //     Icons.add,
            //     color: Colors.white,
            //   ),
            //   backgroundColor: Colors.blue,
            //   // hoverColor: Colors.pinkAccent,
            // ),
          ],
        ),
      ],
    );
  }
}
