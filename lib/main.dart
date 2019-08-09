import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yala/layout/bottom_nav/nav.dart';
import 'package:yala/layout/screens.dart';
import 'package:yala/static/style.dart';

main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(
    MaterialApp(
      home: Home(),
      theme: Style.themeData,
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: Style.appGradient,
        ),
        child: Stack(
          children: <Widget>[
            Screens(),
            BottomNav(),
          ],
        ),
      ),
    );
  }
}
