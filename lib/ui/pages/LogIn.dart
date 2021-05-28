import 'dart:ui';

import 'package:flu/ui/widgets/InputField.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flu/ui/pages/home.dart';

class LogIn extends StatelessWidget {
  ///default = 40
  double verticalSpacing = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.cyan[500], Colors.cyan[200], Colors.cyan[400]]),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: verticalSpacing * 2,
              ),
              /// Header
              buildHeader(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                ///
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: verticalSpacing * 2,
                      horizontal: verticalSpacing),
                  child: buildLoginForm(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Column buildLoginForm() {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              InputField(
                icon: Icon(
                  Icons.person,
                  color: Colors.cyan,
                ),
                lableText: "User Name",
              ),
              SizedBox(
                height: verticalSpacing * .5,
              ),
              InputField(
                isPassword: true,
                icon: Icon(
                  Icons.vpn_key,
                  color: Colors.cyan,
                ),
                lableText: "password",
              )
            ],
          ),
        ),
        SizedBox(
          height: verticalSpacing * .5,
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
                vertical: verticalSpacing * .5), // to make an equal spacing
          ),
          child: Text(
            'forget password ?',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: verticalSpacing * .5,
        ),
        FlatButton(
          onPressed: (){},
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Colors.cyan[400],
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
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
