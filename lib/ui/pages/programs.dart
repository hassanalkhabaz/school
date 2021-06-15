import 'package:flu/api/api_helper.dart';
import 'package:flutter/material.dart';

class Programs extends StatefulWidget {
  @override
  _ProgramsState createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  bool _isLoading = true;
var programe;
  @override
  void initState() {
    super.initState();
    fetchProgrameData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text('Programme'), backgroundColor: Colors.purple[400]),
      body:  !_isLoading
          ? programe != null
              ? Container(
                  child: Padding(
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
      )
              : Center(
                  child: Text('No Alerts Found'),
                )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  // Secreen Logic
  void fetchProgrameData() async {
    int userId=1;
    final data = await ApiHelper().getProgram(userId);
    setState(() {
      programe = data;
      _isLoading = false;
    });
  }
}
