import 'package:flutter/material.dart';

class WidgetTxt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '\$364,871,069,663',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '\$72,000,844,854',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
