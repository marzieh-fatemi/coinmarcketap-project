import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'widgettxt.dart';
import 'widgettxt_small.dart';
import 'bottomshit.dart';
import 'stackchild.dart';

class HomePagePrimary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            StackChild(),
            DragBottomshit(),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
