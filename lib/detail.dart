import 'package:flutter/material.dart';
import 'data.dart';

class Detail extends StatelessWidget {
  final String imgurl;
  Detail({this.imgurl});
  final List<String> txt = [
    'UniSwap Protocol',
    'Integrated into',
    'Tradingview',
    'Decrypt.sep27,2020'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18.0),
      child: Row(
        children: [
          Container(
            child: Container(
              padding: EdgeInsets.all(7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/icons8-werewolf-24.png',
                    ),
                  ),
                  Expanded(
                      child: FittedBox(
                    child: Text('JOIN CRYPTOPANIC >'),
                  )),
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 70, 0, 0),
              color: Colors.white.withOpacity(0.5),
            ),
            width: 130.0,
            height: 96.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(imgurl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt[0],
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                txt[1],
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              Text(
                txt[2],
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                txt[3],
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
