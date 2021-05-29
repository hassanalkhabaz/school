import 'package:flu/ui/widgets/CardView.dart';
import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
        backgroundColor: Colors.cyan[400],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 2),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return CardView(
              cardHeader: Text('2021-06-01', style: TextStyle(fontSize: 16)),
              cardBody: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10).copyWith(top: 10),
                    child: Text('Reason of the Alert',
                        style: TextStyle(fontSize: 16)),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10).copyWith(top: 10),
                    child: Text('some description about it!'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
