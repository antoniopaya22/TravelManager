import 'package:flutter/material.dart';
import 'package:travelmanager/theme/color/light_color.dart';

import 'chip.dart';

class CategoryRow extends StatelessWidget {
  final String title;
  final Color primary;
  final Color textColor;

  const CategoryRow({Key key, this.title, this.primary, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: LightColor.titleTextColor, fontWeight: FontWeight.bold),
          ),
          chip("See all", primary)
        ],
      ),
    );
  }
  
}