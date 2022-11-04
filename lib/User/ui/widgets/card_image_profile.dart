// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:platzi_flutter/widgets/floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget {
  String pathImage;

  CardImageProfile(this.pathImage, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: heightCard,
      width: widthCard,
      margin: EdgeInsets.only(top: marginTopCard, left: marginLeftCard),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(borderRadiusImage)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black,
                blurRadius: 15.0,
                offset: Offset(boxShadowOffset1, boxShadowOffset2))
          ]),
    );
    return Stack(
      alignment: Alignment(stackAlignment1,stackAlignment2),
      children: <Widget>[
        card,
        FloatingActionButtonGreen()
      ],
    );
  }

  final heightCard = 350.0;
  final widthCard = 250.0;
  final marginTopCard = 80.0;
  final marginLeftCard = 20.0;
  final borderRadiusImage = 10.0;
  final boxShadowOffset1 = 0.0;
  final boxShadowOffset2 = 7.0;
  final stackAlignment1 = 0.9;
  final stackAlignment2 = 1.1;
}