import 'package:flutter/material.dart';
import 'package:yala/navigation/screen.dart';
import 'package:yala/pages/list.dart';
import 'package:yala/pages/root.dart';
import 'package:yala/pages/text.dart';

class ViewNavigatorObserver extends NavigatorObserver {
  ViewNavigatorObserver(this.onNavigation);

  final VoidCallback onNavigation;

  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    onNavigation();
  }

  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    onNavigation();
  }
}

class ScreenView extends StatefulWidget {
  const ScreenView({Key key, this.screen, this.onNavigation, this.navigatorKey})
      : super(key: key);

  final Screen screen;
  final VoidCallback onNavigation;
  final Key navigatorKey;

  @override
  _ScreenViewState createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: widget.navigatorKey,
      observers: <NavigatorObserver>[
        ViewNavigatorObserver(widget.onNavigation),
      ],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return RootPage(screen: widget.screen);
              case '/list':
                return ListPage(screen: widget.screen);
              case '/text':
                return TextPage(screen: widget.screen);
              default:
                return RootPage(screen: widget.screen);
            }
          },
        );
      },
    );
  }
}
