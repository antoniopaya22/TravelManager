import 'package:flutter/material.dart';

import 'about.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Travel Manager',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/navcover.jpg')
                )
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blueAccent,
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
              color: Colors.blueAccent,
            ),
            title: Text(
              'Viajes',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.description,
              color: Colors.blueAccent,
            ),
            title: Text(
              'Documentos',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.timeline,
              color: Colors.blueAccent,
            ),
            title: Text(
              'Rutas',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0),
            ),
            onTap: () => {Navigator.of(context).pop()},
          ),
          Divider(),
          AboutTile()
        ],
      ),
    );
  }
}
