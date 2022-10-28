// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = 0xFF11DA53;
    const iconFAB = Icons.favorite_border;
    return FloatingActionButton(
      backgroundColor: const Color(bgColor),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: const Icon(iconFAB),
    );
  }
}
