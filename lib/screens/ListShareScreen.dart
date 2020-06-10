import 'package:flutter/material.dart';
import 'package:infanskalteng/components/constants.dart';
import 'package:infanskalteng/components/ShareScreen.dart';
import 'package:infanskalteng/components/ShareAddon.dart';
import 'package:infanskalteng/components/ShareLain.dart';

class ListShare extends StatefulWidget {
  static String id = 'List_Share';
  @override
  ListShareState createState() => ListShareState();
}

class ListShareState extends State<ListShare>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          Text('Brosur Digital',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Paket',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Add-on',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Lain-lainnya',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    ShareScreen(),
                    ShareAddon(),
                    ShareLain(),
                  ]
              )
          )
        ],
      ),

    );
  }

}