import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      applicationIcon: Icon(
        Icons.info,
        color: Colors.grey,
      ),
      icon: Icon(
        Icons.info,
        color: Colors.grey,
      ),
      aboutBoxChildren: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Developed By Antonio Payá González",
        ),
      ],
      applicationName: 'TravelManager',
      applicationVersion: "1.0.1",
      applicationLegalese: "Apache License 2.0",
    );
  }
}