import 'package:flutter/material.dart';
import 'package:travelmanager/ui/pages/inicio.dart';

void main() => runApp(TravelManager());

class TravelManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Manager',
        theme: ThemeData(
          accentColor: Colors.blueAccent,
          primaryColor: Colors.blueAccent
        ),
        home: InicioPage());
  }
}