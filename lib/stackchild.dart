import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'widgettxt.dart';
import 'widgettxt_small.dart';

class StackChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 15, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Global Metrics',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              child: ListView(
                padding: EdgeInsets.all(20.0),
                children: [
                  WidgetTxt(),
                  SizedBox(
                    height: 1.0,
                  ),
                  WidgetTxtSmall(),
                  SizedBox(
                    height: 7.0,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  WidgetTxt(),
                  SizedBox(
                    height: 1.0,
                  ),
                  WidgetTxtSmall(),
                  SizedBox(
                    height: 7.0,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  WidgetTxt(),
                  SizedBox(
                    height: 1.0,
                  ),
                  WidgetTxtSmall(),
                  SizedBox(
                    height: 40.0,
                  ),
                  SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <FastLineSeries<SalesData, String>>[
                      FastLineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('1h', 35),
                          SalesData('24h', 28),
                          SalesData('7d', 34),
                          SalesData('30d', 32),
                          SalesData('90d', 40),
                          SalesData('1y', 45),
                          SalesData('All', 40),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.year,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                      )
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
                color: Color(0xFF1D1E33),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
