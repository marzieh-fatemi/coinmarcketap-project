import 'package:flutter/material.dart';

import 'second_page.dart';
import 'third.dart';
import 'fourth.dart';
import 'seting.dart';
import 'home_page_primary.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final tabs = [
    HomePagePrimary(),
    SeconsPage(),
    Third(),
    Fourth(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        toggleableActiveColor: Colors.blue,
        accentColor: Colors.blue,
        splashColor: Colors.blue,
      ),
      home: Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home, color: Colors.black),
              icon: Icon(Icons.home, color: Colors.grey),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.equalizer, color: Colors.black),
              icon: Icon(
                Icons.equalizer,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.pie_chart, color: Colors.black),
              icon: Icon(
                Icons.pie_chart,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.bubble_chart, color: Colors.black),
              icon: Icon(
                Icons.bubble_chart,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.more_horiz, color: Colors.black),
              icon: Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
              title: Text(''),
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
