// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonPurpe extends StatelessWidget {
  String buttonText = "Navigate";

  ButtonPurpe(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(textSnackBar)));
      },
      child: Container(
        margin: EdgeInsets.only(
            top: marginTop, left: marginLeft, right: marginRight),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Color(color1), Color(color2)],
                begin: FractionalOffset(
                    fractionalOffsetBegin1, fractionalOffsetBegin2),
                end: FractionalOffset(
                    fractionalOffsetEnd1, fractionalOffsetEnd2),
                stops: [stops1, stops2],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: buttonTextSize,
                color: Colors.white,
                fontFamily: "Lato"),
          ),
        ),
      ),
    );
  }

  /* margin */
  final marginTop = 30.0;
  final marginLeft = 20.0;
  final marginRight = 20.0;
  /* colors */
  final color1 = 0xFF4268D3;
  final color2 = 0xFF584CD1;
  /* FractionalOffset */
  final fractionalOffsetBegin1 = 0.2;
  final fractionalOffsetBegin2 = 0.0;
  final fractionalOffsetEnd1 = 1.0;
  final fractionalOffsetEnd2 = 0.6;
  final stops1 = 0.0;
  final stops2 = 0.6;
  /* buttonText */
  final buttonTextSize = 18.0;
  /* Text ShowSnackBar */
  final textSnackBar = "Navegando";
}
