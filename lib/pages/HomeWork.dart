import 'package:flutter/material.dart';
import 'package:flutter_app/pages/MyDrawer.dart';

class HomeWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _chosenValue;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Work'),
      ),
      drawer: MyDrawer(),
      body: Column(
        children: [
          DropdownButton<String>(
            focusColor: Colors.white,
            value: _chosenValue,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: <String>[
              'math',
              'arabic',
              'english',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(color: Colors.black),
                ),
              );
            }).toList(),
            hint: Text(
              'Please choose a name of subject',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            onChanged: (String value) {
              {
                _chosenValue = value;
                print(_chosenValue);
              }
            },
          ),
        ],
      ),
    );
  }
}
