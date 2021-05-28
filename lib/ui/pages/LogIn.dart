import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flu/ui/pages/home.dart';

import 'InputWrapper.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              ),

              /// Header
              buildHeader(),
              ///
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: InputWrapper(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildHeader() {
    return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Welcome to MY SCHOOL',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          );
  }
}
