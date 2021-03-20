import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomeWork.dart';
import 'package:flutter_app/pages/LogIn.dart';
import 'package:flutter_app/pages/MyDrawer.dart';
import 'package:flutter_app/pages/change_password.dart';
import 'package:flutter_app/pages/change_password_after_valudation.dart';


class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: (''),
      home: Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        drawer: MyDrawer(),

      ), routes: {
      'logout': (context) {
        return LogIn();
      },
      'change_password': (context) {
        return change_password();
      },
      'change_password_after_valudation':(context){return change_password_after_valudation();},
      'HomeWork' :(context){return HomeWork();}
      },
    );
  }
}
