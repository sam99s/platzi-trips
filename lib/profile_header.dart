// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/card_image_profile_list.dart';
import 'package:platzi_flutter/gradient_back.dart';
import 'package:platzi_flutter/profile_appbar.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Profile", 350.0),
        ProfileAppbar(),
      ],
    );
  }
}
