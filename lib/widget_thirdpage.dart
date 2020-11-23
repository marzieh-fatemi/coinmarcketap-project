import 'package:flutter/material.dart';

class WidgetThirdPage extends StatelessWidget {
  final String imgurl;
  final String txt;
  WidgetThirdPage({this.imgurl, this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imgurl,
                height: 40.0,
                width: 40.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                'USDT',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.add_circle,
                color: Colors.grey[600],
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
