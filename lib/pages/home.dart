import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flu/pages/HomeWork.dart';
import 'package:flu/pages/LogIn.dart';
import 'package:flu/pages/MyDrawer.dart';
import 'package:flu/pages/change_password.dart';
import 'package:flu/pages/change_password_after_valudation.dart';
import 'package:flu/pages/marks.dart';

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
      title: ('Home'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('home'),
        ),
        drawer: MyDrawer(),
        body: Column(
          children: [
            Center(
              child: SizedBox(
                height: 300.0,
                width: double.infinity,
                child: Carousel(
                  boxFit: BoxFit.cover,
                  autoplay: true,

                  
                  dotSize: 6.0,
                  dotIncreasedColor: Colors.cyan,
                  dotBgColor: Colors.transparent,
                  dotPosition: DotPosition.bottomCenter,
                  dotVerticalPadding: 10.0,
                  showIndicator: true,
                  indicatorBgPadding: 7.0,
                  images: [
                    AssetImage('images/image_class2.jpg'),
                    AssetImage('images/image_class3.jpg'),
                    AssetImage('images/image_class.jpg')
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      routes: {
        'logout': (context) {
          return LogIn();
        },
        'change_password': (context) {
          return change_password();
        },
        'change_password_after_valudation': (context) {
          return change_password_after_valudation();
        },
        'HomeWork': (context) {
          return HomeWork();
        },
        'marks': (context) {
          return Marks();
        },
        'home': (context) {
          return Home();
        }
      },
    );
  }
}
