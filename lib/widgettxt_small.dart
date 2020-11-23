import 'package:flutter/material.dart';

class WidgetTxtSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Market Cap',
            style: TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
          Text(
            '24h Vol',
            style: TextStyle(fontSize: 13.0, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
