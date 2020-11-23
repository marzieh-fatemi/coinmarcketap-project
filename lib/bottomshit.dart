import 'package:flutter/material.dart';
import 'reusable_home.dart';
import 'home_row.dart';
import 'widgethomelist.dart';

class DragBottomshit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        builder: (context, contoroller) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.75,
            padding: EdgeInsets.all(20.0),
            child: ListView(
              controller: contoroller,
              children: [
                HomeRow(),
                HomeRow(),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Coins',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 29),
                    ),
                    Text(
                      'see All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                WidgetHomeList(),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gainers & Losers',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 29),
                    ),
                    Text(
                      'see All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Text(
                  'Based on Top 100 Coins',
                  style: TextStyle(color: Colors.grey),
                ),
                WidgetHomeList(),
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'News',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 29),
                    ),
                    Text(
                      'see All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Text(
                  'Breaking & Trending',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ReusableHome(
                  imgurl: 'images/dark-side-of-social-media.jpg',
                  txt: 'Whales Loading Up on XRP',
                ),
                ReusableHome(
                  imgurl: 'images/BTC-Trading.jpg',
                  txt: 'XRP Will Be Global Reseve',
                ),
                ReusableHome(
                  imgurl:
                      'images/Adbrain-hack-obeStock_121896609-1700x1133.jpeg',
                  txt: 'Neo Foundation teasest',
                ),
                ReusableHome(
                  imgurl: 'images/unnamed.png',
                  txt: 'Aiming for \$0.30',
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text('see all news'),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    ),
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          );
        },
      ),
    );
  }
}
