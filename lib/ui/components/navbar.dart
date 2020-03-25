import 'package:flutter/material.dart';
import 'package:travelmanager/theme/color/light_color.dart';

import 'about.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      Expanded(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Travel Manager',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              decoration: BoxDecoration(
                  color: LightColor.orange,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/navcover.jpg'))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: LightColor.orange,
              ),
              title: Text(
                'Inicio',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              onTap: () => {},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.airplanemode_active,
                color: LightColor.orange,
              ),
              title: Text(
                'Gestionar viajes',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: LightColor.orange,
              ),
              title: Text(
                'Configuración',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
              ),
              onTap: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
      Divider(),
      AboutTile(),
    ]));
  }
}
