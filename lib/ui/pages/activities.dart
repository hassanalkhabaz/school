import 'package:flu/api/api_helper.dart';
import 'package:flu/model/activity_nodel.dart';
import 'package:flu/ui/widgets/CardView.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  bool _isLoading = true;
  List<ActivityModel> activitiesList = [];
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
      body: !_isLoading
          ? activityTile != null
              ? Container(
                  child: Container(
                  child: ListView.builder(
                    itemCount: activitiesList.length,
                    itemBuilder: (context, index) {
                      return CardView(
                          cardHeader: Text(
                            activitiesList[index].startDate.toString(),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          cardBody: activityTile(
                              title: activitiesList[index].typeOf,
                              descrtiption: activitiesList[index].description,
                              endDate: activitiesList[index].endDate.toString()));
                    },
                  ),
                ))
              : Center(
                  child: Text('No Alerts Found'),
                )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
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

// Secreen Logic
  void fetchAlertsData() async {
    final data = await ApiHelper().getActivities();
    setState(() {
      activitiesList = data;
      _isLoading = false;
    });
  }
}
