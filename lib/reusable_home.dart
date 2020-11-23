import 'package:flutter/material.dart';

class ReusableHome extends StatelessWidget {
  final String imgurl;
  final String txt;
  ReusableHome({this.imgurl, this.txt});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 19.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imgurl),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 18.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                txt,
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('U.Today 1d ago',
                  style: TextStyle(color: Colors.grey, fontSize: 10.0)),
            ],
          )
        ],
      ),
    );
  }
}
