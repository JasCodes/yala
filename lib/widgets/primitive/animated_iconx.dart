// Refer: http://www.bytebau.com/implicitlyanimatedwidget-the-simple-way-to-animate-widgets/

import 'package:flutter/material.dart';
import 'package:yala/widgets/primitive/iconx.dart';

class AnimatedIconX extends ImplicitlyAnimatedWidget {
  AnimatedIconX(
    this.icon, {
    Key key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
    @required Duration duration,
    Curve curve = Curves.linear,
  }) : super(duration: duration, curve: curve, key: key);

  final IconData icon;
  final double size;
  final Color color;
  final String semanticLabel;
  final TextDirection textDirection;

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() =>
      _AnimatedIconXState();
}

class _AnimatedIconXState extends AnimatedWidgetBaseState<AnimatedIconX> {
  ColorTween _colorTween;
  // Tween<double> _sizeTween;

  @override
  void forEachTween(TweenVisitor visitor) {
    _colorTween = visitor(
        _colorTween, widget.color, (dynamic value) => ColorTween(begin: value));

    // _sizeTween = visitor(_sizeTween, widget.size,
    //     (dynamic value) => Tween<double>(begin: value));
  }

  @override
  Widget build(BuildContext context) {
    return IconX(
      widget.icon,
      // size: _sizeTween.evaluate(animation),
      size: widget.size,
      color: _colorTween.evaluate(animation),
      semanticLabel: widget.semanticLabel,
      textDirection: widget.textDirection,
    );
  }
}
