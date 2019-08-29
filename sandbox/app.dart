import 'package:flutter/material.dart';

import 'package:yala/providers.dart';
import 'package:yala/screens/home.dart';
import 'package:yala/screens/homex.dart';
import 'package:yala/bottom_nav_bar.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;
  SlideRightRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return new SlideTransition(
              position: new Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Providers(
        child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yala',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(90, 97, 247, 1),
        // accentColor: Colors.amberAccent,
      ),
      home: Scaffold(
        body: Navigator(
          // observers: <NavigatorObserver>[
          //   ViewNavigatorObserver(widget.onNavigation),
          // ],
          onUnknownRoute: (settings) {
            return SlideRightRoute(widget: ScHome());
          },
          onGenerateRoute: (RouteSettings settings) {
            // final bcUI = Provider.of<BcUI>(context);
            print(settings);
            switch (settings.name) {
              case '/home':
                return SlideRightRoute(widget: ScHome());
                break;
              case '/homex':
                return SlideRightRoute(widget: ScHomex());
                break;
            }
            // switch (bcUI.tabIndex) {
            //   case 0:
            //     return SlideRightRoute(widget: ScHome());
            //   case 1:
            //     return SlideRightRoute(widget: ScHomex());
            //   default:
            //     {
            //       return SlideRightRoute(widget: ScHome());
            //     }
            // }
          },
        ),
        bottomNavigationBar: WtBottomNavBar(),
      ),
    ));
  }
}
// tabbar gradient
// font
//
