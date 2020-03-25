import 'package:flutter/material.dart';
import 'package:travelmanager/theme/theme.dart';
import 'package:travelmanager/ui/pages/tabs.dart';

void main() => runApp(TravelManager());

class TravelManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Travel Manager',
        theme: AppTheme.lightTheme,
        home: TabsPage());
  }
}