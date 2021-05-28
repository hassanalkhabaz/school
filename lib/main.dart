import 'package:flutter/material.dart';
import 'package:flu/ui/pages/LogIn.dart';
import 'package:flu/ui/widgets/MyDrawer.dart';
import 'package:flu/ui/pages/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Home()/*LogIn()*/;
  }
}
