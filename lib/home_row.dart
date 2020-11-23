import 'package:flutter/material.dart';

class HomeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/icons8-average-2-64.png',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'Price Alerts',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/icons8-average-2-64.png',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    'Compare',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
