// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/widgets/gradient_back.dart';
import 'package:platzi_flutter/User/ui/screens/profile_appbar.dart';

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
