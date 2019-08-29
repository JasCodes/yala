import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/widgets/screens/accounts/widgets/chart/chart_slider/chart_slider_knob.dart';

class ChartSlider extends HookWidget {
  final double widgetWidth;
  final double widgetHeight;
  final double knobWidth;
  final double chartHeight;

  const ChartSlider({
    Key key,
    this.widgetWidth,
    this.widgetHeight,
    this.knobWidth,
    this.chartHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _left = useState(6 / 7 * widgetWidth - (knobWidth / 2));

    final _onDrag = (dd) {
      _left.value = dd.globalPosition.dx - knobWidth / 2;
      print('x');
    };
    final _onDragUp = (dd) {
      var index = (7 / widgetWidth * (_left.value + knobWidth / 2));
      if (index < 1) index = 1;
      if (index > 6) index = 6;
      _left.value = (index.round() * widgetWidth / 7) - (knobWidth / 2);
    };
    return GestureDetector(
      onHorizontalDragStart: _onDrag,
      onHorizontalDragDown: _onDrag,
      onTapUp: _onDragUp,
      onHorizontalDragUpdate: _onDrag,
      onHorizontalDragEnd: _onDragUp,
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(),
            ),
            ChartSliderKnob(
              left: _left.value,
              height: (widgetHeight - chartHeight * 1),
              knobWidth: knobWidth,
            ),
          ],
        ),
      ),
    );
  }
}
