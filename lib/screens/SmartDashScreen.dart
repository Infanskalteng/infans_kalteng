import 'package:flutter/material.dart';
import 'package:infanskalteng/components/GridDash.dart';



class SmartDash extends StatefulWidget {
  static String id = 'Smart_dash';
  @override
  _SmartDashState createState() => _SmartDashState();
}

class _SmartDashState extends State<SmartDash> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          GridDashboard(),
          SizedBox(height: 5.0),

        ],
      ),

    );
  }
}
