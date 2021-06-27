import 'package:flu/api/api_helper.dart';
import 'package:flu/ui/widgets/custom_button.dart';
import 'package:flu/ui/widgets/fields.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isLoading = true;
  String confNewPassword;
  String newPassword;

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
            SizedBox(height: 10),
            textField(
              context,
              isPassword: true,
              label: 'New password',
              name: 'new_password',
              onChanged: (val) {
                newPassword = val;
              },
              hint: 'Enter your new password',
            ),
            SizedBox(height: 10),
            textField(
              context,
              isPassword: true,
              label: 'confirm new password',
              name: 'confirm_new_password',
              onChanged: (val) {
                confNewPassword = val;
              },
              hint: 'Enter confirmation password',
            ),
            SizedBox(height: 20),
            CustomButton(
                onPressed: () {
                  changePassword();
                  Navigator.of(context).pushReplacementNamed('/home');
                },
                title: 'Change'),
          ]),
        )),
      ),
    ));
  }

  // Secreen Logic
  void changePassword() async {
    _isLoading = true;
    final data = await ApiHelper().resetPassword(confNewPassword, newPassword);
    setState(() {
      _isLoading = false;
    });
  }
}
