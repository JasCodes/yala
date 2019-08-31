import 'package:flutter/material.dart';

class PageScroll extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const PageScroll({
    Key key,
    @required this.child,
    this.color,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Container(
            constraints: BoxConstraints(
              minWidth: constraints.maxWidth,
              minHeight: constraints.maxHeight,
            ),
            color: color,
            margin: margin,
            padding: padding,
            // child: child,
            child: child,
          ),
        );
      },
    );
  }
}
