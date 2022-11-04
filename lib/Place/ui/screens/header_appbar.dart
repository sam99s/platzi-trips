// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/Place/ui/widgets/card_image_list.dart';
import 'package:platzi_flutter/widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Welcome", 250.0),
        const CardImageList()
      ],
    );
  }
}