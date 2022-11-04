// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:platzi_flutter/Place/ui/screens/home_trips.dart';
import 'package:platzi_flutter/User/ui/screens/profile_trips.dart';
import 'package:platzi_flutter/Place/ui/screens/search_trips.dart';

class PlatziTrips extends StatefulWidget{
  @override
  State<PlatziTrips> createState() => _PlatziTripsState();
}

class _PlatziTripsState extends State<PlatziTrips> {

  int indexTap = 0;
  final List<Widget> widgetChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index){
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: indexTap,
          onTap: onTapTapped,
          items: [
          BottomNavigationBarItem(
            icon: Icon(homeIcon),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(searchIcon),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(personIcon),
            label: ""
          ),
        ]),
      ),
    );
  }

  final homeIcon = Icons.home;
  final searchIcon = Icons.search;
  final personIcon = Icons.person;
}