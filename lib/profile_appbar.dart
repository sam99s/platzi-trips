// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/review.dart';

import 'floating_action_button_white.dart';

class ProfileAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: heightSizedBoxTop),
        Review("assets/Img/sam99s.jpg", "Samuel Schulz", "samuel.schulz.dev@gmail.com", "none", parseColor("#FFFFFF"), parseColor("#FFFFFF"), 0xFFFFFF00, true),
        SizedBox(height: heightSizedBoxMiddle),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FloatingActionButtonWhite(Icons.turned_in_not),
            FloatingActionButtonWhite(Icons.card_travel),
            FloatingActionButtonWhite(Icons.add),
            FloatingActionButtonWhite(Icons.mail_outline),
            FloatingActionButtonWhite(Icons.person),
          ],
        )
      ],
    );
  }

  final heightSizedBoxTop = 100.0;
  final heightSizedBoxMiddle = 15.0;
  int parseColor (String code) => int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
}