import 'package:flutter/material.dart';

class CardUnderline extends StatelessWidget {
  const CardUnderline({
    Key key,
    this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: Container(
        child: child,
        decoration: new BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(3.3),
          boxShadow: [
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
          ],
        ),
      ),
    );
  }
}
