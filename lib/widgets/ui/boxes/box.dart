import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class BoxWhite extends Box {
  const BoxWhite({
    Key key,
    Widget child,
    void Function() onTap,
  }) : super(
          key: key,
          child: child,
          color: Colors.white,
          onTap: onTap,
        );
}

class Box extends StatelessWidget {
  const Box({
    Key key,
    this.child,
    this.decorate = false,
    this.color = Style.primaryColor,
    this.gradient,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final bool decorate;
  final Color color;
  final Gradient gradient;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    Color _color;
    List<BoxShadow> boxShadow;

    if (gradient != null) {
      _color = null;
    } else if (decorate) {
      _color = Colors.white;
    } else {
      _color = color;
    }

    if (decorate) {
      boxShadow = [
        BoxShadow(
          color: Color(0x14000000),
          offset: Offset(0, -0.7),
          blurRadius: 4,
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0xff5a61f7),
          offset: Offset(0, 2.7),
          blurRadius: 0,
          spreadRadius: 0,
        )
      ];
    }

    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          hoverColor: Colors.transparent,
          borderRadius: BorderRadius.circular(Style.boxRadius),
          onTap: onTap,
          child: child,
        ),
      ),
      decoration: BoxDecoration(
        color: _color,
        gradient: gradient,
        borderRadius: BorderRadius.circular(Style.boxRadius),
        boxShadow: boxShadow,
      ),
    );
  }
}
