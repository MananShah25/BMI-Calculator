import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  RoundActionButton({this.icon, @required this.onClick});

  final IconData icon;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0x552196F3),
    );
  }
}
