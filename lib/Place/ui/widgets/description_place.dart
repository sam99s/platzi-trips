// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../../widgets/button_purple.dart';

class DescritionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescritionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {super.key});

  @override
  Widget build(Object context) {
    // ignore: unused_local_variable
    final starHalf = Container(
      margin:
          EdgeInsets.only(top: marginTopTitleStar, right: marginRightTitleStar),
      child: Icon(
        Icons.star_half,
        color: Color(starColor),
      ),
    );

    final starBorder = Container(
      margin:
          EdgeInsets.only(top: marginTopTitleStar, right: marginRightTitleStar),
      child: Icon(
        Icons.star_border,
        color: Color(starColor),
      ),
    );

    final star = Container(
      margin:
          EdgeInsets.only(top: marginTopTitleStar, right: marginRightTitleStar),
      child: Icon(
        Icons.star,
        color: Color(starColor),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: marginTopDescription,
        right: marginRightDescription,
        left: marginLeftDescription,
      ),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: fontSizeDescriptionPlace,
            fontWeight: FontWeight.w300,
            color: Colors.black),
      ),
    );

    final titleStar = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: marginTopTitleStar,
              left: marginLeftTitleStar,
              right: marginRightTitleStar),
          child: Text(
            namePlace,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: fontSizeTitleDescription,
                fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[star, star, star, star, starBorder],
        ),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[titleStar, description, ButtonPurpe("Navigate")],
    );
  }

  /* final titleStar */
  final marginTopTitleStar = 360.0;
  final marginLeftTitleStar = 20.0;
  final marginRightTitleStar = 20.0;
  final starColor = 0xFFF2C611;
  /* final description */
  final marginTopDescription = 20.0;
  final marginLeftDescription = 20.0;
  final marginRightDescription = 20.0;
  final fontSizeTitleDescription = 20.0;
  final fontSizeDescriptionPlace = 16.0;
}
