import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

NavigationRailDestination NavIcon({String name, int index}) {
  return NavigationRailDestination(
      padding: EdgeInsets.symmetric(
        vertical: 2.0,
      ),
      icon: SizedBox(
        height: 30,
        width: 30,
        child: SvgPicture.asset("icons/$index.svg", color: Colors.blueAccent),
      ),
      selectedIcon: SizedBox(
        height: 30,
        width: 30,
        child: SvgPicture.asset(
          "icons/$index.svg",
          color: Colors.pink,
        ),
      ),
      label: Text(
        name,
        style: TextStyle(
          color: Colors.pink,
        ),
      ));
}
