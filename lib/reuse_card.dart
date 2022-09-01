// import 'package:bmi_calculator/gender_card.dart';
import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard({@required this.col, this.cardChild, this.onClick});

  final Color col;
  final Widget cardChild;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onClick,
        child: Container(
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: col,
            borderRadius: BorderRadius.circular(10.0),
          ),
          // height: 200,
          // width: 170,
          child: cardChild,
        ),
      ),
    );
  }
}
