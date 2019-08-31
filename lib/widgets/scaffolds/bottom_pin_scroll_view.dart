import 'package:flutter/material.dart';

class BottomPinScrollView extends StatelessWidget {
  final Widget child;
  final Widget bottomPinChild;
  final double bottomMargin;
  final Color color;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const BottomPinScrollView({
    Key key,
    @required this.child,
    this.bottomPinChild,
    this.bottomMargin,
    this.color,
    this.margin,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              child: child,
              margin: margin,
              padding: padding,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: false,
            child: Container(
              margin: margin,
              padding: padding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  bottomPinChild,
                  SizedBox(
                    height: bottomMargin,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
