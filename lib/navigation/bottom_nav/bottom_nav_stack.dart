import 'package:flutter/material.dart';
import 'package:yala/navigation/bottom_nav/bottom_nav_bar.dart';
import 'package:yala/navigation/bottom_nav/bottom_nav_fab.dart';
import 'package:yala/navigation/bottom_nav/bottom_nav_sheet.dart';

class BottomNavStack extends StatelessWidget {
  const BottomNavStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          BottomNavSheet(),
          BottomNavBar(),
          BottomNavFAB(),
        ],
      ),
    );
  }
}
