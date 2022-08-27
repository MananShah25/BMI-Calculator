import 'package:flutter/material.dart';
import 'const_variables.dart';

class InactiveCard extends StatefulWidget {
  // const InactiveCard({Key? key}) : super(key: key);
  InactiveCard({@required this.labelText, @required this.variableValue});

  final String labelText;
  int variableValue;

  @override
  State<InactiveCard> createState() => _InactiveCardState();
}

class _InactiveCardState extends State<InactiveCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.labelText,
          style: kLabelStyle,
        ),
        Text(
          widget.variableValue.toString(),
          style: kNumberStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.add_circle,
            // ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  widget.variableValue -= 1;
                });
              },
              child: Icon(
                Icons.remove,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              // hoverColor: Colors.pinkAccent,
            ),
            SizedBox(
              width: 20.0,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  widget.variableValue += 1;
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.blue,
              // hoverColor: Colors.pinkAccent,
            ),
          ],
        ),
      ],
    );
  }
}

class RoundActionButton extends StatelessWidget {
  // const RoundActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      shape: CircleBorder(),
      fillColor: Colors.blue,
    );
  }
}
