import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  const CardImageList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(paddingCardImageList),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage('assets/Img/beach.jpeg'),
          CardImage('assets/Img/mountain.jpeg'),
          CardImage('assets/Img/river.jpeg')
        ],
      ),
    );
  }

  final paddingCardImageList = 25.0;
}