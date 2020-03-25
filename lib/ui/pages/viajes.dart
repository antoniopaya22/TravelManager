import 'package:flutter/material.dart';
import 'package:travelmanager/theme/color/light_color.dart';
import 'package:travelmanager/ui/components/header.dart';

class ViajesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ViajesPageEstado();
}

class _ViajesPageEstado extends State<ViajesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: <Widget>[
          Header(
            titulo: 'Viajes',
            color: LightColor.purple,
            colorLeft: LightColor.lightpurple,
            colorRight: LightColor.darkpurple,
          ),
          _viajesPage(),
        ],
      ),
    ));
  }

  Widget _viajesPage() {
    return Icon(Icons.airplanemode_active);
  }
}
