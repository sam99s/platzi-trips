// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String photoUrl;
  String name;
  String details;
  String comment;
  bool withOutComment = false;
  int colorName;
  int colorUserInfo;
  int colorUserComment;

  Review(this.photoUrl, this.name, this.details, this.comment, this.colorName, this.colorUserInfo, this.colorUserComment, this.withOutComment, {super.key});

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
      margin: EdgeInsets.only(left: marginLeftUserComment),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: fontSizeUserComment,
            fontWeight: FontWeight.w900,
            color: Color(colorUserComment)),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: marginLeftUserInfo),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: fontSizeUserInfo,
            color: Color(colorUserInfo)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: marginLeftUserName),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: fontSizeNameUser, color: Color(colorName)),
      ),
    );

    final userDetailsWithComment = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final userDetailsWithoutComment = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: photoTop, left: photoLeft),
      width: photoWidth,
      height: photoHeight,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(photoUrl))),
    );

    return withOutComment ? Row(
      children: <Widget>[photo, userDetailsWithoutComment],
    ) :  Row(
      children: <Widget>[photo, userDetailsWithComment],
    );
  }

  /* final photo */
  final photoTop = 20.0;
  final photoLeft = 20.0;
  final photoWidth = 80.0;
  final photoHeight = 80.0;
  /* final userName */
  final marginLeftUserName = 20.0;
  final fontSizeNameUser = 17.0;
  //info
  final marginLeftUserInfo = 20.0;
  final fontSizeUserInfo = 13.0;
  //comment
  final marginLeftUserComment = 20.0;
  final fontSizeUserComment = 13.0;
}
