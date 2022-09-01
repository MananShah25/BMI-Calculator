import 'package:bmi_calculator/reuse_card.dart';
import 'package:flutter/material.dart';
import 'const_variables.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({Key? key}) : super(key: key);

  ResultPage({@required this.bmiValue});

  final double bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 15.0,
                right: 15.0,
              ),
              child: Text(
                'RESULT',
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
            ReuseCard(
              col: kInactiveColor,
              cardChild: Text(
                bmiValue.toString(),
                style: TextStyle(
                  fontSize: 30.0,
                ),
                // 'Hello',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
