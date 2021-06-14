import 'package:flutter/material.dart';

class Programs extends StatefulWidget {
  @override
  _ProgramsState createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Programme'), backgroundColor: Colors.purple[400]),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Programme name '),
            ),
            CircleAvatar(
              backgroundColor: Colors.white.withOpacity(.12),
              radius: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Icon(
                  Icons.image,
                  color: Colors.purple[100],
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
