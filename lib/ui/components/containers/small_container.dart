import 'package:flutter/material.dart';

Positioned smallContainer(Color primary, double top, double left,
    {double radius = 10}) {
  return Positioned(
      top: top,
      left: left,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: primary.withAlpha(255),
      ));
}
