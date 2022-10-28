// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title;
  double heightContainer;
  GradientBack(this.title, this.heightContainer, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightContainer,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(gradient1), Color(gradient2)],
              begin: FractionalOffset(
                  beginFractionalOffSet1, beginFractionalOffSet2),
              end: FractionalOffset(endFractionalOffSet1, endFractionalOffSet2),
              stops: [stops1, stops2])),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Lato",
            fontSize: fontSizeTitle,
            fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(alignment1, alignment2),
    );
  }

  final gradient1 = 0xFF4268D4;
  final gradient2 = 0xFF584CD1;
  final beginFractionalOffSet1 = 0.2;
  final beginFractionalOffSet2 = 0.0;
  final endFractionalOffSet1 = 1.0;
  final endFractionalOffSet2 = 0.6;
  final stops1 = 0.0;
  final stops2 = 0.6;
  final fontSizeTitle = 30.0;
  final alignment1 = -0.9;
  final alignment2 = -0.6;
}
