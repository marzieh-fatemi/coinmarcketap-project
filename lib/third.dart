import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'widget.dart';
import 'request_post.dart';
import 'widget_thirdpage.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Portfolio',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 18.0),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add_circle,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RequestPage(),
                            ));
                      },
                    ),
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
                      Text(
                        '\$187,001.79',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w900),
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.green,
                            ),
                            Text(
                              '\$39,798.16',
                              style: TextStyle(fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.green[100]),
                      ),
                    ],
                  ),
                  Text(
                    'Total Holdings in USD',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 28.0,
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
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Holding',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Container(
                        padding: EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(15, 2, 15, 2),
                              child: Center(
                                child: Text(
                                  '\$',
                                  style: TextStyle(fontWeight: FontWeight.w900),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                            Text('%')
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[300]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Asset',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        'price',
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                      Row(
                        children: [
                          Text(
                            'Holdings',
                            style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.file_download,
                            size: 15.0,
                            color: Colors.blue,
                          ),
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  WidgetPage(
                    imgurl: 'images/icons8-bitcoin-48.png',
                    txt: 'BTC',
                  ),
                  Divider(),
                  WidgetPage(
                    imgurl: 'images/icons8-average-2-64.png',
                    txt: 'ETH',
                  ),
                  Divider(),
                  WidgetPage(
                    imgurl: 'images/icons8-switch-48.png',
                    txt: 'ANT',
                  ),
                  Divider(),
                  WidgetPage(
                    imgurl: 'images/icons8-average-2-100.png',
                    txt: 'NVC',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Add from watchlist',
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  WidgetThirdPage(
                    imgurl: 'images/icons8-average-2-64.png',
                    txt: 'Tether',
                  ),
                  Divider(),
                  WidgetThirdPage(
                    imgurl: 'images/icons8-ledger-64(1).png',
                    txt: 'IOTA',
                  ),
                  Divider(),
                  WidgetThirdPage(
                    imgurl: 'images/icons8-dollar-litecoin-exchange-100.png',
                    txt: 'Dai',
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

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
