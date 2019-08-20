import 'package:flutter/material.dart';
import 'package:yala/widgets/layout/screen_view.dart';
import 'package:yala/widgets/layout/screen.dart';

class ScreenStack extends StatelessWidget {
  const ScreenStack({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    screenMap.forEach((screen, widget) {
      children.add(ScreenView(screen: screen, child: widget));
    });
    // print(children);
    return Stack(
      children: children,
    );
  }
}
