import 'package:flutter/material.dart';
import 'running.dart';
import 'package:infanskalteng/auth/auth.dart';
import 'package:infanskalteng/auth/auth_provider.dart';
import 'package:infanskalteng/auth/root_page.dart';
import 'screens/LoginScreen.dart';
import 'screens/RegisterScreen.dart';
import 'screens/SmartDashScreen.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      auth: Auth(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home : RootPage(),
      //initialRoute: SmartDash.id,
          routes: {
//        WelcomeScreen.id: (context) => WelcomeScreen(),
            RegisterScreen.id: (context) => RegisterScreen(),
            LoginScreen.id: (context) => LoginScreen(),
            SmartDash.id: (context) => SmartDash(),
//        DashTrend.id: (context) => DashTrend(),
//        ListShare.id: (context) => ListShare(),
          }
  ),
    );
}
}

