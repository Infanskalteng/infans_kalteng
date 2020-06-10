import 'package:flutter/material.dart';
import 'package:infanskalteng/components/constants.dart';
import 'package:infanskalteng/components/info_card.dart';

class DashTrend extends StatefulWidget {
  static String id = 'Dash_Trend';
  @override
  DashTrendState createState() => DashTrendState();
}

class DashTrendState extends State<DashTrend> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kTextUngu.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),

            child: Wrap(
              runSpacing: 20,
              spacing: 20,
              children: <Widget>[
                InfoCard(
                  title: "Paket 3P",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: 1062,
                  press: () {},
                ),
                InfoCard(
                  title: "Paket Netizen 2",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: 75,
                  press: () {},
                ),
                InfoCard(
                  title: "Paket Netizen 1",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: 689,
                  press: () {},
                ),
                InfoCard(
                  title: "Indihome Gamer",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: 75,
                  press: () {
                  },
                ),
                InfoCard(
                  title: "Paket 3P",
                  iconColor: Color(0xFFFF8C00),
                  effectedNum: 1062,
                  press: () {},
                ),
                InfoCard(
                  title: "Paket Netizen 2",
                  iconColor: Color(0xFFFF2D55),
                  effectedNum: 75,
                  press: () {},
                ),
                InfoCard(
                  title: "Paket Netizen 1",
                  iconColor: Color(0xFF50E3C2),
                  effectedNum: 689,
                  press: () {},
                ),
                InfoCard(
                  title: "Indihome Gamer",
                  iconColor: Color(0xFF5856D6),
                  effectedNum: 75,
                  press: () {
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


