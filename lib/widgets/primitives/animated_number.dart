// Refer: http://www.bytebau.com/implicitlyanimatedwidget-the-simple-way-to-animate-widgets/

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnimatedNumber extends ImplicitlyAnimatedWidget {
  final double number;
  final TextStyle style;
  final NumberFormat format;
  AnimatedNumber({
    Key key,
    @required this.number,
    this.format,
    this.style,
    @required Duration duration,
    Curve curve = Curves.linear,
  }) : super(duration: duration, curve: curve, key: key);

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() =>
      _AnimatedNumberState();
}

class _AnimatedNumberState extends AnimatedWidgetBaseState<AnimatedNumber> {
  Tween _tween;
  // Tween<double> _sizeTween;

  @override
  void forEachTween(TweenVisitor visitor) {
    _tween =
        visitor(_tween, widget.number, (dynamic value) => Tween(begin: value));
  }

  @override
  Widget build(BuildContext context) {
    var num = _tween.evaluate(animation);
    return Text(
      widget.format == null ? num.toString() : widget.format.format(num),
      style: widget.style,
    );
  }
}
