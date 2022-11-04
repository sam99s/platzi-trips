// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './review.dart';

class ReviewList extends StatelessWidget {

  int parseColor (String code) => int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/Img/people.jpg", "Varuna Yasas", "1 review 5 photos",
            "There is an amazing place in Sri Lanka", parseColor("#000000"), parseColor("#808080"), parseColor("#A3A5A7"), false),
        Review("assets/Img/girl.jpg", "Girl Dev", "2 review 25 photos",
            "Fantastic", parseColor("#000000"), parseColor("#808080"), parseColor("#A3A5A7"), false),
        Review("assets/Img/ann.jpg", "AnnCode", "30 review 15 photos",
            "Flutter teacher in this app", parseColor("#000000"), parseColor("#808080"), parseColor("#A3A5A7"), false),
      ],
    );
  }
}
