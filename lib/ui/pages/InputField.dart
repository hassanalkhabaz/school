import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  @override
  const InputField({
    Key key,
    this.lableText ,
    this.child,
    this.icon,
    this.hintText,
    this.IanputBorder,
    this.IsPassword

  }) : super(key: key);

  final  Icon icon;
  final String lableText;
  final Widget child;
  final String hintText;
  final InputBorder IanputBorder;
  final bool IsPassword;
  Widget build(BuildContext context,) {

    return Column(
      children: <Widget>[
        Container(

          child: TextField(
            obscureText: IsPassword,
            obscuringCharacter: "*",
            decoration: InputDecoration(icon: icon,
                border: IanputBorder,
                labelText: lableText,
                hintText: hintText,
              

            ),
          ),
        ),
      ],
    );
  }
}
