import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infanskalteng/components/constants.dart';


class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "INSTAGRAM",
      subtitle: "Share   Click    PS",
      event: "0         0         0",
      img: "assets/IG.png");

  Items item2 = new Items(
    title: "FACEBOOK",
    subtitle: "Share   Click    PS",
    event: "1         0         0",
    img: "assets/fb.png",
  );
  Items item3 = new Items(
    title: "WHAPSAPP",
    subtitle: "Share   Click    PS",
    event: "0         0         0",
    img: "assets/wa.png",
  );
  Items item4 = new Items(
    title: "TWITTER",
    subtitle: "Share   Click    PS",
    event: "0         0          0",
    img: "assets/twt.png",
  );
  Items item5 = new Items(
    title: "SMS",
    subtitle: "Share   Click    PS",
    event: "0          0          0",
    img: "assets/sms.png",
  );
  Items item6 = new Items(
    title: "Sosmed Lain",
    subtitle: "Share   Click    PS",
    event: "0          0          0",
    img: "assets/share.png",
  );


  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6 ];
    var color = 0xffF8BBD0;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 30, right: 30),
          crossAxisCount: 2,
          crossAxisSpacing: 24,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: kTextUngu.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: kTextUngu.withOpacity(0.09),
                      offset: const Offset(3.0, 3.0),
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ),
                  ]
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    data.title,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    data.subtitle,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    data.event,
                    style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                            color: kTextUngu,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
