import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yala/navigation/bottom_nav/bottom_nav_stack.dart';
import 'package:yala/models/user.dart';
import 'package:yala/static/mock_data.dart';
import 'package:yala/static/style.dart';
import 'package:yala/navigation/bottom_nav/bottom_nav_store.dart';
import 'package:yala/navigation/navigator_stack.dart';

main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // status bar color
    ),
  );
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
    return MultiProvider(
      providers: [
        Provider<User>(
          builder: (_) => MockData(),
        ),
        Provider<BottomNavStore>(
          builder: (_) => BottomNavStore(),
        ),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Style.backgroundColor,
        body: Container(
          decoration: BoxDecoration(
            gradient: Style.primaryGradient,
          ),
          child: Stack(
            children: <Widget>[
              NavigatorStack(),
              BottomNavStack(),
            ],
          ),
        ),
      ),
    );
  }
}
