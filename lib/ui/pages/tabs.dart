import 'package:flutter/material.dart';
import 'package:travelmanager/theme/color/light_color.dart';
import 'package:travelmanager/ui/components/navbar.dart';
import 'package:travelmanager/ui/pages/inicio.dart';
import 'package:travelmanager/ui/pages/rutas.dart';
import 'package:travelmanager/ui/pages/viajes.dart';
import 'package:travelmanager/ui/pages/archivos.dart';

class TabsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TabsPageEstado();
}

class _TabsPageEstado extends State<TabsPage>
    with SingleTickerProviderStateMixin {
      
  TabController _tabController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
    _tabController.addListener(_handleTabSelection);
  }

  _handleTabSelection() {
    setState(() {
      _currentIndex = _tabController.index;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          InicioPage(),
          ViajesPage(),
          ArchivosPage(),
          RutasPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
          controller: _tabController,
          unselectedLabelColor: _getTabColor(),
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: _getTabColor()),
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
              text: 'Archivos',
            ),
            Tab(
              icon: new Icon(Icons.timeline),
              text: 'Rutas',
            ),
          ]),
    );
  }

  Color _getTabColor() {
    switch ( _currentIndex ) {
      case 0:
        return LightColor.orange;
      case 1:
        return LightColor.purple;
      case 2:
        return LightColor.yellow;
      case 3:
        return LightColor.darkseeBlue;
      default:
        return LightColor.orange;
    }
  }
}
