import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  // const ResultPage({Key? key}) : super(key: key);

  ResultPage({@required this.bmiValue});

  final double bmiValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              bmiValue.toString(),
              style: TextStyle(
                fontSize: 25.0,
              ),
              // 'Hello',
            ),
          ],
        ),
      ),
    );
  }
}
