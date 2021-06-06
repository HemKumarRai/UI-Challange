import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'class.dart';

class Statistics extends StatefulWidget {
  @override
  _StatisticsState createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List<String> _name = ["Fiverr.com", 'Romc.Inc', 'Leo Company'];
  List<String> _salary = ["Salarey", "Monthly Salary", "Monthly Salary"];
  List<String> _amount = ["+ €322.32", "+ €200.73", "+ €340.73"];
  List<String> _time = ["11.30 PM", "2.15 PM", "2.30 PM"];
  List<String> _locations = ['', 'A', 'B', 'C', 'D']; // Option 1
  String _selectedLocation = ''; // Option 1
  // List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  bool income = true;

  @override
  Widget build(BuildContext context) {
    var data = [
      ClicksPerYear("jan", 1000),
      ClicksPerYear(
        'feb',
        6000,
      ),
      ClicksPerYear(
        'mar',
        4000,
      ),
      ClicksPerYear(
        'apr',
        7000,
      ),
      ClicksPerYear(
        'may',
        5100,
      ),
      ClicksPerYear(
        'jun',
        4870,
      ),
      ClicksPerYear(
        'july',
        5550,
      ),
      // ClicksPerYear(
      //   'Aug',
      //   4530,
      // ),
      // ClicksPerYear(
      //   'sep',
      //   2300,
      // ),
      // ClicksPerYear(
      //   'oct',
      //   6700,
      // ),
      // ClicksPerYear(
      //   'nov',
      //   5600,
      // ),
      // ClicksPerYear(
      //   'dec',
      //   6900,
      // ),
    ];
    var series = [
      new charts.Series(
        id: 'Clicks',
        domainFn: (ClicksPerYear clickData, _) => clickData.year,
        measureFn: (ClicksPerYear clickData, _) => clickData.clicks,
        data: data,
      ),
    ];
    var chart = charts.BarChart(
      series,
      animate: true,
    );
    var chartWidget = new Padding(
      padding: new EdgeInsets.all(32.0),
      child: new SizedBox(
        height: 200.0,
        child: chart,
      ),
    );
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                'Statistic',
                style: TextStyle(
                    letterSpacing: 0.2,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff412567).withOpacity(0.8)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Text(
                'Activity',
                textAlign: TextAlign.left,
                style: TextStyle(
                    letterSpacing: 0.2,
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff412567)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 56,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xffFBF5FF),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          income = true;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: (MediaQuery.of(context).size.width / 2) - 16,
                        decoration: BoxDecoration(
                          color: income ? Color(0xffA279D7) : Color(0xffFBF5FF),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          'Income',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: income ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          income = false;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 56,
                        width: (MediaQuery.of(context).size.width / 2) - 16,
                        decoration: BoxDecoration(
                          color: income ? Color(0xffFBF5FF) : Color(0xffA279D7),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          'Expenses',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: income ? Colors.grey : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Earning Statistic',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff9799A5),
                        fontSize: 16),
                  ),
                  Container(
                      child: Row(children: [
                    Text(
                      'Sort By',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xffC2C2C9),
                          fontSize: 14),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    DropdownButton(
                      hint: Icon(Icons.expand_more_outlined),
                      // Not necessary for Option 1
                      value: _selectedLocation,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLocation = newValue;
                        });
                      },
                      items: _locations.map((location) {
                        return DropdownMenuItem(
                          child: new Text(location),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ]))
                ],
              ),
            ),
            chartWidget,
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text('History',
                  style: TextStyle(
                      letterSpacing: 0.2,
                      fontSize: 19,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff412567))),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 18, bottom: 16),
                itemBuilder: ((context, index) => Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFF8F2),
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Icon(
                                    Icons.credit_card_rounded,
                                    color: Color(0xffFE9C53),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      _name[index],
                                      style: TextStyle(
                                          color: Color(0xff5D447D),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      _salary[index],
                                      style: TextStyle(
                                          color: Color(0xffC6C7CD),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                _amount[index],
                                style: TextStyle(
                                    color: Color(0xff2ECBC3),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                _time[index],
                                style: TextStyle(
                                    color: Color(0xffC6C7CD),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
