import 'package:flutter/material.dart';
import 'page3.dart';
import 'page2.dart';
import 'page1.dart';
import 'package:infanskalteng/auth/auth.dart';
import 'package:infanskalteng/auth/auth_provider.dart';
import 'package:infanskalteng/screens/LoginScreen.dart';
import 'package:infanskalteng/components/constants.dart';
import 'screens/SmartDashScreen.dart';
import 'package:infanskalteng/screens/DashTrendScreen.dart';
import 'package:infanskalteng/screens/ListShareScreen.dart';
import 'package:infanskalteng/screens/ProfileScreen.dart';


class Running extends StatefulWidget {
  const Running({this.onSignedOut});
  final VoidCallback onSignedOut;


  @override
  RunningState createState() => RunningState();
}

class RunningState extends State<Running> {

  Future<void> _signOut(BuildContext context) async {
    try {
      final BaseAuth auth = AuthProvider.of(context).auth;
      await auth.signOut();
      Navigator.pushNamed(context, LoginScreen.id);
      //onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  int index = 0;
  List<Widget> _widgets = [SmartDash(),ProfileScreen(), ListShare(), Screen3(), DashTrend()];
  tapped(int tappedIndex) {
    setState(() {index = tappedIndex;});
  }
  String xAchievement = 'Achievement';
  String xIdCard = 'IdCard';
  String xShare = 'Share';
  String xLeaderboard = 'Leaderboard';
  String xDashTrend = 'DashTrend';

  Switchcase(int dex) {
    String text1;
    switch (dex) {
      case 0:
        return text1 = xAchievement;
        break;
      case 1:
        return text1 = xIdCard;
        break;
      case 2:
        return text1 = xShare;
        break;
      case 3:
        return text1 = xLeaderboard;
        break;
      case 4:
        return text1 = xDashTrend;
        break;
      default: 
        return text1 = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextUngu,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => _signOut(context),
        ),
        title: Text(Switchcase(index),
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Colors.white)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: _widgets[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: kTextUngu,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: tapped,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.assignment_turned_in), title: Text('Achievement')),
          BottomNavigationBarItem(icon: new Icon(Icons.person_outline), title: Text('Id Card')),
          BottomNavigationBarItem(icon: new Icon(Icons.share), title: Text('Share')),
          BottomNavigationBarItem(icon: new Icon(Icons.assessment), title: Text('Leaderboard')),
          BottomNavigationBarItem(icon: new Icon(Icons.offline_bolt), title: Text('DashTrend')),
        ],
      ),
    );
  }
}



//AppBar(
//title: Text('Welcome'),
//actions: <Widget>[
//FlatButton(
//child: Text('Logout', style: TextStyle(fontSize: 17.0, color: Colors.white)),
//onPressed: () => _signOut(context),
//)
//],
//),