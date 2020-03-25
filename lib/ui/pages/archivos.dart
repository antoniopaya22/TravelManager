import 'package:flutter/material.dart';
import 'package:travelmanager/theme/color/light_color.dart';
import 'package:travelmanager/ui/components/header.dart';

class ArchivosPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ArchivosPageEstado();
}

class _ArchivosPageEstado extends State<ArchivosPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: <Widget>[
          Header(
            titulo: 'Archivos',
            color: LightColor.yellow,
            colorLeft: LightColor.lightOrange,
            colorRight: LightColor.darkOrange,
          ),
          _archivosPage(),
        ],
      ),
    ));
  }

  Widget _archivosPage() {
    return Icon(Icons.home);
  }
}
