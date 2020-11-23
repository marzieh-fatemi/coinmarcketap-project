import 'package:flutter/material.dart';
import 'data.dart';

class WidgetHomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.fromLTRB(10, 10, 50, 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imgurl[index],
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    topcoins[index],
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  Text(
                    '\$11,744.38',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_drop_up,
                        color: Colors.green,
                      ),
                      Text(
                        '4.18%',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
