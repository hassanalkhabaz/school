import 'package:flu/ui/widgets/CardView.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black54,
    );
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('Ativities'),
          backgroundColor: Colors.purple[400],
          bottom: buildBottomShape(),
        ),
        drawer: MyDrawer(),
        body: Container(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return CardView(
                  cardHeader: Text(
                    '',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  cardBody: activityTile(
                      title: 'title',
                      descrtiption: "description",
                      endDate: 'date'));
            },
          ),
        ));
  }

  ListTile activityTile({String title, String descrtiption, String endDate}) {
    return ListTile(
      title: Text(title, style: textStyle),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(descrtiption, style: textStyle),
          Align(alignment: Alignment.centerRight, child: Text(endDate)),
        ],
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
}
