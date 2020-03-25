import 'package:flutter/material.dart';
import 'package:travelmanager/theme/color/light_color.dart';
import 'package:travelmanager/ui/components/card.dart';
import 'package:travelmanager/ui/components/category_row.dart';
import 'package:travelmanager/ui/components/containers/decoration_container.dart';
import 'package:travelmanager/ui/components/header.dart';

class InicioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InicioPageEstado();
}

class _InicioPageEstado extends State<InicioPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: <Widget>[
          Header(
            titulo: 'Inicio',
            color: LightColor.orange,
            colorLeft: LightColor.lightOrange2,
            colorRight: LightColor.darkOrange,
          ),
          SizedBox(height: 20),
          CategoryRow(
              title: 'Viajes',
              primary: LightColor.orange,
              textColor: LightColor.orange),
          _filaViajes(),
          CategoryRow(
              title: 'Archivos',
              primary: LightColor.purple,
              textColor: LightColor.purple),
          
        ],
      ),
    ));
  }

  Widget _filaViajes() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            CardCustom(
                primary: LightColor.orange,
                backWidget: DecorationContainer(
                    primary: LightColor.lightOrange, top: 50, left: -30),
                chipColor: LightColor.orange,
                chipText1: "Viaje a China en Avión",
                chipText2: "8 Archivos",
                isPrimaryCard: true,
                imgPath:
                    "https://cdn0.iconfinder.com/data/icons/vehicles-23/64/vehicles-23-512.png"),
            CardCustom(
                primary: Colors.white,
                chipColor: LightColor.seeBlue,
                backWidget: DecorationContainer(
                    primary: LightColor.seeBlue, top: -50, left: 30),
                chipText1: "Viaje a Madrid en Tren",
                chipText2: "2 Archivos",
                isPrimaryCard: false,
                imgPath:
                    "https://d1nhio0ox7pgb.cloudfront.net/_img/g_collection_png/standard/512x512/bullet_train.png"),
            CardCustom(
                primary: Colors.white,
                chipColor: LightColor.black,
                backWidget: DecorationContainer(
                    primary: LightColor.yellow, top: 50, left: -30),
                chipText1: "Viaje a Mallorca en Barco",
                chipText2: "0 Archivos",
                isPrimaryCard: false,
                imgPath:
                    "https://images.vexels.com/media/users/3/127510/isolated/preview/acffc3368e11ef0350498fc032e2f700-cruise-boat-icon-by-vexels.png"),
            CardCustom(
                primary: LightColor.grey,
                chipColor: LightColor.darkgrey,
                backWidget: DecorationContainer(
                    primary: LightColor.lightGrey, top: 90, left: -40),
                chipText1: "Viaje a Ribadesella en bus",
                chipText2: "0 Archivos",
                isPrimaryCard: false,
                imgPath:
                    "https://cdn4.iconfinder.com/data/icons/ai-set/512/bus-01-512.png"),
          ],
        ),
      ),
    );
  }


 
}
