import 'package:flutter/material.dart';

import 'containers/circular_container.dart';

class Header extends StatelessWidget {

  final String titulo;
  final Color color;
  final Color colorLeft;
  final Color colorRight;

  const Header({Key key, this.titulo, this.color, this.colorLeft, this.colorRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      child: Container(
          height: 120,
          width: width,
          decoration: BoxDecoration(
            color: color,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: circularContainer(300, colorLeft)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: circularContainer(width * .5, colorRight)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: circularContainer(width * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {
                                Scaffold.of(context).openDrawer();
                            },
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                titulo,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ))),
            ],
          )),
    );
  }
  
}
