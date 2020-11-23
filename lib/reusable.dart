import 'package:flutter/material.dart';

class Reusable extends StatelessWidget {
  final List<String> title;

  Reusable({this.title});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title[0]),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.0,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title[1]),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.0,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title[2]),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.0,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title[3]),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12.0,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
