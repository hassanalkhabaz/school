import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';

class Marks extends StatefulWidget {
  @override
  _MarksState createState() => _MarksState();
}

class _MarksState extends State<Marks> {
  String _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('marks'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.0),
          child: DropdownButton<String>(
            value: _chosenValue,
            //elevation: 5,
            style: TextStyle(color: Colors.black),

            items: <String>[
              'math',
              'arabic',
              'English',
              'sienc',

            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            hint: Text(
              "Please choose a subject",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            onChanged: (String value) {
              setState(() {
                _chosenValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}