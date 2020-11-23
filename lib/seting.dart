import 'package:flutter/material.dart';
import 'reusable.dart';
import 'circle.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[100],
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  'CoinMarketCap',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                      fontFamily: 'SansitaSwashed'),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Circle(
                          imgurl: 'images/icons8-internet-50.png',
                        ),
                        Circle(
                          imgurl: 'images/icons8-cat-head-50.png',
                        ),
                        Circle(
                          imgurl: 'images/icons8-facebook-f-30.png',
                        ),
                        Circle(
                          imgurl: 'images/icons8-twitter-squared-24.png',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'App',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'App Version 3.0.7',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Account Settings'),
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
                              Text('Launch Screen'),
                              Row(
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10.0),
                                  ),
                                  SizedBox(
                                    width: 9.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12.0,
                                  ),
                                ],
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
                              Text('Switch to Night Mode'),
                              Icon(
                                Icons.brightness_low,
                                color: Colors.grey,
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
                              Text('Default Currencies'),
                              Row(
                                children: [
                                  Text(
                                    'USD & BTC',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 10.0),
                                  ),
                                  SizedBox(
                                    width: 9.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12.0,
                                  ),
                                ],
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
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'About',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Reusable(
                    title: [
                      'Newsletter',
                      'Privacy Policy',
                      'Terms of Use',
                      'Methodology'
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Support',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Reusable(
                    title: [
                      'Report a Bug',
                      'Give Feedback',
                      'General Site Request Form',
                      'FAQ'
                    ],
                  ),
                  SizedBox(
                    height: 28.0,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    width: 20,
                    child: Center(
                      child: Text('Log Out'),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[300]),
                  ),
                  SizedBox(
                    height: 20.0,
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
