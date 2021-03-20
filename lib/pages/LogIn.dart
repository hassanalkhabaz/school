import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/MyDrawer.dart';
import 'package:flutter_app/pages/home.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.cyan[500], Colors.cyan[300], Colors.cyan[400]]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )
                ,),child: InputWrapper()

              ,)
              ,)
          ],
        ),
      ),
    );
  }
}
