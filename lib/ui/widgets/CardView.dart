import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CardView(
    {@required Widget cardHeader, @required Widget cardBody, headerColor}) {
  return Card(
    elevation: 2,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: headerColor ?? Colors.grey[400],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
          ),
          padding: EdgeInsets.all(10),
          child: cardHeader,
        ),
        cardBody,
        SizedBox(height: 10)
      ],
    ),
  );
}
