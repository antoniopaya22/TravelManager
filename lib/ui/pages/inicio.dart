import 'package:flutter/material.dart';
import 'package:travelmanager/ui/components/navbar.dart';

class InicioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InicioPageEstado();
}

class _InicioPageEstado extends State<InicioPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TravelManager')
        ),
        drawer: NavDrawer(),
        body: Text('Inicio')
    );
  }
  
}