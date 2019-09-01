import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

enum StatusTextType { BLACK, RED, GREEN, YELLOW, GREY }

class StatusText extends StatelessWidget {
  final String text;
  final bool dot;

  final StatusTextType type;
  final Color color;
  const StatusText({
    Key key,
    @required this.text,
    @required this.dot,
    this.type = StatusTextType.BLACK,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _color;
    switch (type) {
      case StatusTextType.GREY:
        _color = Style.greyColor;
        break;
      case StatusTextType.BLACK:
        _color = Style.blackColor;
        break;
      case StatusTextType.RED:
        _color = Style.redColor;
        break;
      case StatusTextType.YELLOW:
        _color = Style.secondaryColor;
        break;
      case StatusTextType.GREEN:
        _color = Style.greenColor;
        break;
      default:
        _color = color;
    }

    List<Widget> children = [];
    if (dot) {
      children.add(
        Container(
          margin: EdgeInsets.only(top: 1.5),
          decoration: BoxDecoration(
            color: _color,
            shape: BoxShape.circle,
          ),
          width: 6,
          height: 6,
        ),
      );
      children.add(
        SizedBox(
          width: 4,
        ),
      );
    }
    children.add(Text(
      text,
      style: TextStyle(
        color: _color,
        fontSize: 10.7,
      ),
    ));
    return AnimatedDefaultTextStyle(
      duration: Duration(milliseconds: 300),
      style: TextStyle(fontFamily: Style.primaryFont),
      child: Row(
        children: children,
      ),
    );
  }
}
