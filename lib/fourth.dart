import 'package:flutter/material.dart';
import 'data.dart';
import 'list.dart';
import 'detail.dart';

class Fourth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Discover',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: text.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(10.0),
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.0),
                              color: Colors.grey[200],
                            ),
                            child: Text(text[index]),
                          );
                        },
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Trending',
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 16.0),
                          ),
                          Image.asset(
                            'images/icons8-fire-48.png',
                            width: 20,
                            height: 20,
                          )
                        ],
                      ),
                      Text(
                        'see All',
                        style: TextStyle(color: Colors.blue, fontSize: 10.0),
                      ),
                    ],
                  ),
                  Text(
                    'popular & Breaking News',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListHorizintal(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          'See All Trending ',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ethereum',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16.0),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.blue, fontSize: 10.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Based on your portfolio',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Detail(
                    imgurl:
                        'images/Adbrain-hack-obeStock_121896609-1700x1133.jpeg',
                  ),
                  Detail(
                    imgurl: 'images/BTC-Trading.jpg',
                  ),
                  Detail(
                    imgurl: 'images/dark-side-of-social-media.jpg',
                  ),
                  SizedBox(
                    height: 17.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'See All Ethereum',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bitcoin',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16.0),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.blue, fontSize: 10.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Based on your portfolio',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Detail(
                    imgurl: 'images/google-search-magnifying-glass.png',
                  ),
                  Detail(
                    imgurl: 'images/Monetize_Cybercrime-1200x433.jpg',
                  ),
                  Detail(
                    imgurl: 'images/unnamed.png',
                  ),
                  SizedBox(
                    height: 17.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'See All Bitcoin',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tather',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16.0),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.blue, fontSize: 10.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Based on your watchlist',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Detail(
                    imgurl: 'images/Monetize_Cybercrime-1200x433.jpg',
                  ),
                  Detail(
                    imgurl: 'images/BTC-Trading.jpg',
                  ),
                  Detail(
                    imgurl: 'images/Monetize_Cybercrime-1200x433.jpg',
                  ),
                  SizedBox(
                    height: 17.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'See All Tether',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
