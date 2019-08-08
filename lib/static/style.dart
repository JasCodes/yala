import 'package:flutter/material.dart';

class Style {
  static const appPrimaryColor = Color(0xff5a61f7);
  static const appPrimarySwatchColor = Color(0xfffbc415);
  static const appGradient = LinearGradient(
      colors: [Color(0xff3b6df5), Color(0xff5b61f7)], stops: [0, 1]);

  static final themeData = ThemeData(
    // fontFamily: 'DINNextRoundedLTPro',
    // primarySwatch: appPrimaryColor,
    canvasColor: Colors.transparent,
  );
}
