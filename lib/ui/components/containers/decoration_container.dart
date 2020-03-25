import 'package:flutter/material.dart';

import 'circular_container.dart';
import 'small_container.dart';

class DecorationContainer extends StatelessWidget {

  final Color primary;
  final double top;
  final double left;

  const DecorationContainer({Key key, this.primary, this.top, this.left}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: top,
          left: left,
          child: CircleAvatar(
            radius: 100,
            backgroundColor: primary.withAlpha(255),
          ),
        ),
        smallContainer(primary, 20, 40),
        Positioned(
          top: 20,
          right: -30,
          child: circularContainer(80, Colors.transparent,
              borderColor: Colors.white),
        )
      ],
    );
  }
  
}