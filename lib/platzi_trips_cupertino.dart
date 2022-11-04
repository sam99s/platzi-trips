// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_flutter/Place/ui/screens/home_trips.dart';
import 'package:platzi_flutter/User/ui/screens/profile_trips.dart';
import 'package:platzi_flutter/Place/ui/screens/search_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(homeIcon, color: Colors.indigo), label: ""),
          BottomNavigationBarItem(
              icon: Icon(searchIcon, color: Colors.indigo), label: ""),
          BottomNavigationBarItem(
              icon: Icon(personIcon, color: Colors.indigo), label: ""),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
            default:
              return HomeTrips();
          }
        },
      ),
    );
  }

  final homeIcon = Icons.home;
  final searchIcon = Icons.search;
  final personIcon = Icons.person;
}
