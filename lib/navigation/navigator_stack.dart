import 'package:flutter/material.dart';
import 'package:yala/navigation/navigator_map.dart';
import 'package:yala/navigation/navigator_view.dart';

class NavigatorStack extends StatelessWidget {
  const NavigatorStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    navigatorMap.forEach((navigator, widget) {
      children.add(NavigatorView(navigator: navigator, child: widget));
    });
    return Stack(
      children: children,
    );
  }
}
