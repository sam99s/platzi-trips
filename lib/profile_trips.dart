// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/card_image_profile_list.dart';
import 'package:platzi_flutter/profile_header.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            SizedBox(height: 220.0),
            CardImageProfileList()
          ],
        ),
        ProfileHeader()
      ],
    );
  }
}
