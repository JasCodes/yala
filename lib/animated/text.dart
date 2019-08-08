import 'package:flutter/material.dart';

class AnimatedText extends ImplicitlyAnimatedWidget {
  AnimatedText(
    this.data, {
    Key key,
    @required this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    @required Duration duration,
    Curve curve = Curves.linear,
  })  : assert(
          data != null,
          'A non-null String must be provided to a Text widget.',
        ),
        textSpan = null,
        super(duration: duration, curve: curve, key: key);

  final String data;
  final InlineSpan textSpan;
  final TextStyle style;
  final StrutStyle strutStyle;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final Locale locale;
  final bool softWrap;
  final TextOverflow overflow;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis textWidthBasis;

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() =>
      _AnimatedTextState();
}

class _AnimatedTextState extends AnimatedWidgetBaseState<AnimatedText> {
  ColorTween _colorTween;

  @override
  void forEachTween(TweenVisitor visitor) {
    _colorTween = visitor(_colorTween, widget.style.color,
        (dynamic value) => ColorTween(begin: value));
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.data,
      style: widget.style.copyWith(color: _colorTween.evaluate(animation)),
      strutStyle: widget.strutStyle,
      textAlign: widget.textAlign,
      textDirection: widget.textDirection,
      locale: widget.locale,
      softWrap: widget.softWrap,
      overflow: widget.overflow,
      textScaleFactor: widget.textScaleFactor,
      maxLines: widget.maxLines,
      semanticsLabel: widget.semanticsLabel,
      textWidthBasis: widget.textWidthBasis,
    );
  }
}
