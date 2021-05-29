import 'package:flu/ui/widgets/CardView.dart';
import 'package:flutter/material.dart';

class Alerts extends StatefulWidget {
  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  double horizontalPadding = 10;
  TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    textStyle = TextStyle(
      fontSize: 20,
      color: Colors.black54,
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Alerts'),
        backgroundColor: Colors.cyan[400],
        bottom: buildBottomShape(),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: alertData.length,
          itemBuilder: (context, index) {
            return CardView(
              cardHeader: Text(alertData[index]['date'],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  )),
              cardBody: buildCardBody(
                alertData[index]['description'],
              ),
            );
          },
        ),
      ),
    );
  }

  PreferredSize buildBottomShape() {
    return PreferredSize(
      preferredSize: Size(0, 20),
      child: Container(
        height: 15,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80),
          ),
        ),
      ),
    );
  }

  Widget buildCardBody(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          title: Text(
            'Reason of the Alert',
            style: textStyle,
          ),
          subtitle: Text(
            description,
            style: TextStyle(height: 2),
          ),
        ),
      ],
    );
  }

  //TODO: temp data for testing
  List alertData = [
    {'date': 'May 2,2021', 'description': 'some description about the alerts!'},
    {'date': 'May 3,2021', 'description': 'some description about the alerts!'},
    {'date': 'May 4,2021', 'description': 'some description about the alerts!'},
    {'date': 'May 5,2021', 'description': 'some description about the alerts!'},
    {'date': 'May 6,2021', 'description': 'some description about the alerts!'},
    {'date': 'May 7,2021', 'description': 'some description about the alerts!'},
    {'date': 'May 8,2021', 'description': 'some description about the alerts!'},
  ];
}
