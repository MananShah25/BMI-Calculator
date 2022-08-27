import 'package:flutter/material.dart';
import 'const_variables.dart';

class GenderCard extends StatelessWidget {
  // const GenderCard({
  //   Key key,
  // }) : super(key: key);

  GenderCard({@required this.genderSymbol, @required this.genderText});

  final String genderText;
  final IconData genderSymbol;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderSymbol,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
