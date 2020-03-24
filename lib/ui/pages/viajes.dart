import 'package:flutter/material.dart';
import 'package:travelmanager/ui/components/navbar.dart';

class ViajesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ViajesPageEstado();
}

class _ViajesPageEstado extends State<ViajesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TravelManager'),
          ),
          drawer: NavDrawer(),
          body: TabBarView(
            children: [
              Icon(Icons.home),
              Icon(Icons.airplanemode_active),
              Icon(Icons.description),
            ],
          ),
          bottomNavigationBar: TabBar(
              unselectedLabelColor: Colors.blueAccent,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blueAccent
              ),
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                  text: 'Inicio',
                ),
                Tab(
                  icon: new Icon(Icons.airplanemode_active),
                  text: 'Viajes',
                ),
                Tab(
                  icon: new Icon(Icons.description),
                  text: 'Documentos',
                ),
              ]),
        ));
  }
}
