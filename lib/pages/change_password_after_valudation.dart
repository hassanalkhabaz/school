import 'package:flutter/material.dart';
import 'package:flutter_app/pages/MyDrawer.dart';

class change_password_after_valudation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('change your password'),
        ),
        drawer: MyDrawer(),
      body: (Column(
        children: [
          Container(
            child: TextField(
              decoration: InputDecoration(
                  hintText: "new password",
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.cyan,
                  ),
                  border: InputBorder.none),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            margin: EdgeInsets.symmetric(vertical: 70),
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(29),
            ),
          ),
          Container(
              child: TextField(
                decoration: InputDecoration(
                    hintText:  "confirm new password",
                    icon: Icon(
                      Icons.person,
                      color: Colors.cyan,
                    ),
                    border: InputBorder.none),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(29),
              )),
          SizedBox(
            height: 60,
          ),
          Container(
            child: FlatButton(
              child: Text('save'),
              onPressed: () {},
              color: Colors.cyan,
            ),
          )
        ],
      )),),
    );
  }
}
