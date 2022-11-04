// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/User/ui/screens/profile_header.dart';
import 'package:platzi_flutter/User/ui/widgets/card_image_profile_list.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            SizedBox(height: sizedBoxHeight),
            const CardImageProfileList()
          ],
        ),
        ProfileHeader()
      ],
    );
  }

  final sizedBoxHeight = 220.0;
}
