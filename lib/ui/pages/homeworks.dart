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
        backgroundColor: Colors.purple[400],
        bottom: buildDropDwonSelectionField(),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return CardView(
            cardHeader: Text('2-05-2021'),
            cardBody: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: textStyle,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text('end data', style: textStyle),
                  )
                ],
              ),
            ),
          );
        },
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
}
