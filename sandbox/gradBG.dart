import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Color gradientStart = Colors.deepPurple[700]; //Change start gradient color here
Color gradientEnd = Colors.purple[500]; //Change end gradient color here
void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(
    MaterialApp(
      theme: ThemeData(
        fontFamily: "DINNextRoundedLTPro",
      ),
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.accents[5],
      body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [gradientStart, gradientEnd],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text('title'),
              backgroundColor: Colors.transparent,
              // backgroundColor: Color(0x00FFFFFF),
              elevation: 0,
            ),
            body: Center(
              child: Text('hix'),
            ),
          )),
    );
  }
}
