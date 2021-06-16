import 'package:flu/api/api_helper.dart';
import 'package:flu/model/homeWork_model.dart';
import 'package:flu/ui/widgets/CardView.dart';
import 'package:flu/ui/widgets/DropDownField.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Homeworks extends StatefulWidget {
  @override
  _HomeworksState createState() => _HomeworksState();
}

class _HomeworksState extends State<Homeworks> {
  bool _isLoading = true;
  List<HomeWorkModel> homeworkList = [];
  final _formKey = GlobalKey<FormBuilderState>();
  double verticalSpacing = 40;
  double horizontalPadding = 10;
  double verticalPadding = 10;
  TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black54,
    );
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('homeworks'),
        backgroundColor: Colors.indigo[400],
        bottom: buildDropDwonSelectionField(),
      ),
      body: !_isLoading
          ? homeworkList != null
              ? Container(
                  child: ListView.builder(
                    itemCount: homeworkList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CardView(
                        cardHeader: Text(homeworkList[index].startDate.toString()),
                        cardBody: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                homeworkList[index].description,
                                style: textStyle,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(homeworkList[index].endDate.toString(), style: textStyle),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Center(
                  child: Text('No Homeworks Found'),
                )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }

  PreferredSize buildDropDwonSelectionField() {
    return PreferredSize(
      preferredSize: Size(0, verticalSpacing * 1.5),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding,
          vertical: verticalPadding,
        ),
        child: Column(children: <Widget>[
          FormBuilder(
            key: _formKey,
            child: Column(children: [
              DropDownField(
                //TODO:init values
                hint: 'Select Subject',
                items: ['sd', 'sdf'],
                onChange: (fd) {},
              )
            ]),
          )
        ]),
      ),
    );
  }

  // Secreen Logic
  void fetchHomeworkData() async {
      _isLoading = true;
    final data = await ApiHelper().getHomeWorks();
    setState(() {
      homeworkList = data;
      _isLoading = false;
    });
  }
}
