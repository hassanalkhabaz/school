import 'package:flu/ui/pages/alerts.dart';
import 'package:flu/ui/pages/forgot_password.dart';
import 'package:flu/ui/pages/homeworks.dart';
import 'package:flu/ui/pages/marks.dart';
import 'package:flu/ui/pages/notifications.dart';
import 'package:flu/ui/pages/payments.dart';
import 'package:flu/ui/pages/profile.dart';
import 'package:flu/ui/pages/programs.dart';
import 'package:flu/ui/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/pages/logIn.dart';
import 'package:flu/ui/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'MY SCHOOL',
      routes: {
        '/splash': (context) => Splash(),
        '/login': (context) => LogIn(),
        '/forgot_password': (context) => ForgotPassword(),
        '/profile': (context) => Profile(),
        '/home': (context) => Home(),
        '/alerts': (context) => Alerts(),
        '/payments': (context) => Payments(),
        '/marks': (context) => Marks(),
        '/notifications': (context) => Notifications(),
        '/programs': (context) => Programs(),
        '/homeworks': (context) => Homeworks(),
      },
      home: LogIn(),
    );
  }
}
