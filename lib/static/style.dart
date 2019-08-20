import 'package:flutter/material.dart';

class Style {
  static const primaryFont = 'DINNextRoundedLTPro';
  static const primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xff3b6df5), Color(0xff5b61f7)],
    stops: [0, 1],
  );
  static const blackColor = Color(0xff181818);
  static const greyColor = Color(0xffbfbfbf);
  static const primaryColor = Color(0xff5a61f7);
  static const secondaryColor = Color(0xfffbc415);
  static const inactiveColor = Color(0xffbfbfbf);
  static const backgroundColor = Color(0xfff3f4f7);
  static const boxRadius = 3.3;
  static final themeData = ThemeData(
    fontFamily: primaryFont,
    canvasColor: Colors.transparent,
  );
}
