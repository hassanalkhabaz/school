import 'package:flutter/material.dart';
import 'package:flutter_app/pages/MyDrawer.dart';

class marks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('marks'),
      ),
      drawer: MyDrawer(),
body: Column(children: [DropdownMenuItem(child: null)],),    );
  }
}
