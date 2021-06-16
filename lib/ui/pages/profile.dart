import 'package:flu/api/api_helper.dart';
import 'package:flu/ui/widgets/custom_button.dart';
import 'package:flu/ui/widgets/fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _isLoading = true;
  String oldPassword ;
  String newPassword ;

  @override
  void initState() {
    super.initState();
    changePassword();
  }
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text('Change password'),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: FormBuilder(
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: [
            SizedBox(height: 20),
            textField(
              context,
              isPassword: true,
              label: 'Current password',
              name: 'current_password',
              onChanged: (val) {
                oldPassword=val;

              },
              hint: 'Enter your current password',
            ),
            SizedBox(height: 10),
            textField(
              context,
              isPassword: true,
              label: 'New password',
              name: 'new_password',
              onChanged: (val) {
                newPassword=val;
              },
              hint: 'Enter your new password',
            ),
            SizedBox(height: 10),
            CustomButton(onPressed: () {
              changePassword();
            }, title: 'Save'),
          ]),
        )),
      ),
    ));
  
  }
  // Secreen Logic
  void changePassword() async {
      _isLoading = true;
    final data = await ApiHelper().resetPassword(oldPassword,newPassword);
    setState(() {
      _isLoading = false;
    });
  }
}
