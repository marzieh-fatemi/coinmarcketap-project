import 'package:flutter/material.dart';
import 'data.dart';
import 'request_delete.dart';

enum Gender { cryptoassets, exchanges }

class SeconsPage extends StatefulWidget {
  @override
  _SeconsPageState createState() => _SeconsPageState();
}

class _SeconsPageState extends State<SeconsPage> {
  final List<String> data = <String>[
    '⭐',
    'BTC',
    'Sort by Rank',
    '%(24h)',
    'Top 100',
    'All Cryptocurrencies'
  ];

  Gender selectedgender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedgender = Gender.cryptoassets;
                            });
                          },
                          child: Text(
                            'Cryptoassets',
                            style: TextStyle(
                                color: selectedgender == Gender.cryptoassets
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedgender = Gender.exchanges;
                            });
                          },
                          child: Text(
                            'Exchanges',
                            style: TextStyle(
                                color: selectedgender == Gender.exchanges
                                    ? Colors.black
                                    : Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Requestdelete(),
                            ));
                      },
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(4.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.grey[200],
                          ),
                          child: Center(
                            child: Text(data[index]),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 9,
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            imgurl[index],
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title[index],
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.grey[200],
                                    ),
                                    child: Text(
                                      '100',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    'SXP',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    '0.21%',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '0.00010840',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Mcap 8,337.98',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          IconButton(
                              icon: Icon(Icons.star_border),
                              onPressed: () {
                                setState(() {
                                  Icon(Icons.star);
                                });
                              }),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: 9),
            ),
          ],
        ),
      ),
    );
  }
}
