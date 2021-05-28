import 'package:flu/ui/pages/force_change_password.dart';
import 'package:flu/ui/pages/forgot_password.dart';
import 'package:flu/ui/pages/homeworks.dart';
import 'package:flu/ui/pages/marks.dart';
import 'package:flu/ui/pages/notifications.dart';
import 'package:flu/ui/pages/programs.dart';
import 'package:flu/ui/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/pages/logIn.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
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
        '/home': (context) => Home(),
        '/marks': (context) => Marks(),
        '/notifications': (context) => Notifications(),
        '/programs': (context) => Programs(),
        '/homeworks': (context) => Homeworks(),
        '/forgot_password': (context) => ForgotPassword(),
        '/force_change_password': (context) => ForceChangePassword(),
      },
      home: LogIn(),
    );
  }
}
