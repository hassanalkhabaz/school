import 'package:flu/api/api_helper.dart';
import 'package:flu/model/attendancemodel.dart';
import 'package:flu/ui/widgets/CardView.dart';
import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  @override
  AattendanceState createState() => AattendanceState();
}

class AattendanceState extends State<Attendance> {
  bool _isLoading = true;
  List<AttendanceModel> attendanceList = [];
  TextStyle textStyle;
  double horizontalPadding = 10;

  @override
  void initState() {
    super.initState();
    fetchAttendanceData();
  }

  @override
  Widget build(BuildContext context) {
    textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black54,
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Attendance'),
        backgroundColor: Colors.purple[400],
        bottom: buildBottomShape(),
      ),
      body: !_isLoading
          ? attendanceList != null
              ? Container(
                  child: Container(
                    child: ListView.builder(
                      itemCount: attendanceList.length,
                      itemBuilder: (context, index) {
                        return CardView(
                          cardHeader: Text(
                              attendanceList[index].date.toString(),
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                          cardBody:
                              buildCardBody(attendanceList[index].isPresense),
                        );
                      },
                    ),
                  ),
                )
              : Center(
                  child: Text('No Attendance Found'),
                )
          : Center(
              child: CircularProgressIndicator(),
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

  Widget buildCardBody(int value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, right: 50),
          title: Text(
            'Attendees',
            style: textStyle,
          ),
          trailing: Text(
            value == 1 ? 'Yes' : 'No',
            style: TextStyle(
              fontSize: 15,
              color: value == 1 ? Colors.green : Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  // Secreen Logic
  void fetchAttendanceData() async {
    final data = await ApiHelper().getAttendances();
    setState(() {
      attendanceList = data;
      _isLoading = false;
    });
  }
}
