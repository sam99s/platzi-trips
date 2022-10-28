import 'package:flutter/material.dart';
import 'card_image_profile.dart';

class CardImageProfileList extends StatelessWidget{
  const CardImageProfileList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(paddingCardImageList),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile('assets/Img/beach.jpeg'),
          CardImageProfile('assets/Img/mountain.jpeg'),
          CardImageProfile('assets/Img/river.jpeg')
        ],
      ),
    );
  }

  final paddingCardImageList = 25.0;
}