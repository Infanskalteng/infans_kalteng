import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:infanskalteng/components/constants.dart';
import 'package:infanskalteng/components/profile_list_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 10),
          header,
          Expanded(
            child: ListView(
              children: <Widget>[
                ProfileListItem(
                  icon: FontAwesomeIcons.phone,
                  text: 'No Telepon : 08123432453',
                ),
                ProfileListItem(
                  icon: FontAwesomeIcons.whatsappSquare,
                  text: 'Whatsapp',
                ),
                ProfileListItem(
                  icon: FontAwesomeIcons.facebookSquare,
                  text: 'Facebook ',
                ),
                ProfileListItem(
                  icon: FontAwesomeIcons.instagramSquare,
                  text: 'Instagram',
                ),
                ProfileListItem(
                  icon: LineAwesomeIcons.list,
                  text: 'Katalog',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



//class ProfileScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
//
    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            height: kSpacingUnit.w * 10,
            width: kSpacingUnit.w * 10,
            //margin: EdgeInsets.only(top: kSpacingUnit.w * 3),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: kSpacingUnit.w * 5,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: kSpacingUnit.w * 2.5,
                    width: kSpacingUnit.w * 2.5,
                    decoration: BoxDecoration(
                      color: kTextUngu,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      heightFactor: kSpacingUnit.w * 1.5,
                      widthFactor: kSpacingUnit.w * 1.5,
                      child: Icon(
                        LineAwesomeIcons.pen,
                        color: kDarkPrimaryColor,
                        size: ScreenUtil().setSp(kSpacingUnit.w * 1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: kSpacingUnit.w * 2),
          Text(
            'Dedy Watiktok',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 0.5),
          Text(
            'SPDED45',
            style: kTitleTextStyle,
          ),
          SizedBox(height: kSpacingUnit.w * 2),
//          Container(
//            height: kSpacingUnit.w * 4,
//            width: kSpacingUnit.w * 20,
//            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
//              color: kTextUngu,
//            ),
//            child: Center(
//              child: Text(
//                'Upgrade to PRO',
//                style: kButtonTextStyle,
//              ),
//            ),
//          ),
        ],
      ),
    );
//
//    var themeSwitcher = ThemeSwitcher(
//      builder: (context) {
//        return AnimatedCrossFade(
//          duration: Duration(milliseconds: 200),
//          crossFadeState:
//          ThemeProvider.of(context).brightness == Brightness.dark
//              ? CrossFadeState.showFirst
//              : CrossFadeState.showSecond,
//          firstChild: GestureDetector(
//            onTap: () =>
//                ThemeSwitcher.of(context).changeTheme(theme: kLightTheme),
//            child: Icon(
//              LineAwesomeIcons.sun,
//              size: ScreenUtil().setSp(kSpacingUnit.w * 3),
//            ),
//          ),
//          secondChild: GestureDetector(
//            onTap: () =>
//                ThemeSwitcher.of(context).changeTheme(theme: kDarkTheme),
//            child: Icon(
//              LineAwesomeIcons.moon,
//              size: ScreenUtil().setSp(kSpacingUnit.w * 3),
//            ),
//          ),
//        );
//      },
//    );
//
    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
//        SizedBox(width: kSpacingUnit.w * 3),
//        Icon(
//          LineAwesomeIcons.arrow_left,
//          size: ScreenUtil().setSp(kSpacingUnit.w * 3),
//        ),
        profileInfo,
        //themeSwitcher,
        SizedBox(width: kSpacingUnit.w * 3),
      ],
    );
//
//    return ThemeSwitchingArea(
//      child: Builder(
//        builder: (context) {
//
//        },
//      ),
//    );
//  }
//}