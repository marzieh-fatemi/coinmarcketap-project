import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final String imgurl;
  Circle({this.imgurl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 20,
        child: Image.asset(
          imgurl,
          width: 20,
          height: 20.0,
        ),
      ),
    );
  }
}
