import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class Tx extends StatelessWidget {
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final String text;
  final TextStyle style;

  const Tx(
    this.fontSize,
    this.text, {
    Key key,
    this.style,
    this.color,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _style =
        TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight)
            .merge(style);
    return Text(text, style: _style);
  }
}

class TxB extends Tx {
  TxB(double fontSize, String text, {Color color = Style.blackColor})
      : super(fontSize, text, color: color);
}

class TxBB extends Tx {
  TxBB(double fontSize, String text,
      {color = Style.blackColor, fontWeight = FontWeight.w500})
      : super(fontSize, text, color: color, fontWeight: fontWeight);
}

class TxW extends Tx {
  TxW(double fontSize, String text, {Color color = Colors.white})
      : super(fontSize, text, color: color);
}

class TxWB extends Tx {
  TxWB(double fontSize, String text,
      {Color color = Colors.white, fontWeight = FontWeight.w500})
      : super(fontSize, text, color: color, fontWeight: fontWeight);
}

class TxG extends Tx {
  TxG(double fontSize, String text, {Color color = Style.greyColor})
      : super(fontSize, text, color: color);
}

class TxGB extends Tx {
  TxGB(double fontSize, String text,
      {Color color = Style.greyColor, fontWeight = FontWeight.w500})
      : super(fontSize, text, color: color, fontWeight: fontWeight);
}

class TxP extends Tx {
  TxP(double fontSize, String text, {Color color = Style.primaryColor})
      : super(fontSize, text, color: color);
}

class TxPB extends Tx {
  TxPB(double fontSize, String text,
      {Color color = Style.primaryColor, fontWeight = FontWeight.w500})
      : super(fontSize, text, color: color, fontWeight: fontWeight);
}

class H extends SizedBox {
  H(double height) : super(height: height);
}

class W extends SizedBox {
  W(double width) : super(width: width);
}
