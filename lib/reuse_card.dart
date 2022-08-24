import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  ReuseCard({@required this.col, this.cardChild});

  final Color col;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: col,
        borderRadius: BorderRadius.circular(10.0),
      ),
      // height: 200,
      // width: 170,
      child: cardChild,
    );
  }
}
