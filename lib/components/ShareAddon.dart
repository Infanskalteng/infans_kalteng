import 'package:flutter/material.dart';

class ShareAddon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 10.0),
              width: MediaQuery.of(context).size.width - 0.0,
              height: MediaQuery.of(context).size.height - 0.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Speed On Demand', '20 Mbps - 200 Mbps', 'assets/SOD.JPG',
                      false, false, context),
                  _buildCard('Wifi Extender', 'Penguat Wifi', 'assets/extender.JPG',
                      true, false, context),
                ],
              )),
          SizedBox(height: 40.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(left: 11, top: 10,right: 11,bottom: 10),
        child: InkWell(
            onTap: () {
//              Navigator.of(context).push(
////                  MaterialPageRoute(builder: (context) => ShareDetail(
////                      assetPath: imgPath,
////                      cookieprice:price,
////                      cookiename: name
////                  ))
//              );
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.3),
                          spreadRadius: 5.0,
                          blurRadius: 8.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
//                  Padding(
//                      padding: EdgeInsets.all(5.0),
//                      child: Row(
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          children: [
//                            isFavorite
//                                ? Icon(Icons.favorite, color: Color(0xFFEF7532))
//                                : Icon(Icons.favorite_border,
//                                    color: Color(0xFFEF7532))
//                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                        //margin: const EdgeInsets.all(0.0),
                          height: 120.0,
                          width: 180.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              image: DecorationImage(

                                  image: AssetImage(imgPath),
                                  fit: BoxFit.fill)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  SizedBox(height: 10.0),
                  Text(name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
//                  Padding(
//                      padding: EdgeInsets.all(8.0),
//                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
//                  Padding(
//                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
//                      child: Row(
//                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                          children: [
//                            if (!added) ...[
//                              Icon(Icons.shopping_basket,
//                                  color: Color(0xFFD17E50), size: 12.0),
//                              Text('Add to cart',
//                                  style: TextStyle(
//                                      fontFamily: 'Varela',
//                                      color: Color(0xFFD17E50),
//                                      fontSize: 12.0))
//                            ],
//                            if (added) ...[
//                              Icon(Icons.remove_circle_outline,
//                                  color: Color(0xFFD17E50), size: 12.0),
//                              Text('3',
//                                  style: TextStyle(
//                                      fontFamily: 'Varela',
//                                      color: Color(0xFFD17E50),
//                                      fontWeight: FontWeight.bold,
//                                      fontSize: 12.0)),
//                              Icon(Icons.add_circle_outline,
//                                  color: Color(0xFFD17E50), size: 12.0),
//                            ]
//                          ]))
                ]))));
  }
}