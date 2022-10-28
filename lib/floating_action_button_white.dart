// ignore_for_file: must_be_immutable, prefer_const_constructors_in_immutables, no_logic_in_create_state
import 'package:flutter/material.dart';

class FloatingActionButtonWhite extends StatefulWidget {
  final IconData? iconProp;

  FloatingActionButtonWhite(this.iconProp, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonWhite(iconProp);
  }
}

class _FloatingActionButtonWhite extends State<FloatingActionButtonWhite> {
  final IconData? iconProp;

  _FloatingActionButtonWhite(this.iconProp);

  void onPressedFav() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Agregaste a tus Favoritos"),
    ));
  }

  int parseColor(String code) =>
      int.parse(code.substring(1, 7), radix: 16) + 0xFF000000;

  @override
  Widget build(BuildContext context) {
    final bgColor = parseColor("#FFFFFF");
    final iconColor = parseColor("#584cd1");
    return FloatingActionButton(
      backgroundColor: Color(bgColor),
      mini: iconProp == Icons.add ? false : true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(iconProp, color: Color(iconColor), size: iconProp == Icons.add ? 40.0 : 20.0)
    );
  }
}
