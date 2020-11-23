import 'package:flutter/material.dart';

class AmountText extends StatelessWidget {
  final String text;

  const AmountText(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent,
          fontSize: 20,
        ),
      ),
    );
  }
}
