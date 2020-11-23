import 'package:flutter/material.dart';

class WidgetPage extends StatelessWidget {
  final String imgurl;
  final String txt;
  WidgetPage({this.imgurl, this.txt});
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
                width: 40.0,
                height: 40.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 3.0,
              ),
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$375.87',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.green,
                    ),
                    Text(
                      '\$744.90M',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.green[100]),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                '5,555.00',
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                '5,555.00',
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
