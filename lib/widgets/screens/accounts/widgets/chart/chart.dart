import 'package:flutter/material.dart';
import 'package:yala/widgets/screens/accounts/widgets/chart/chart_painter.dart';
import 'package:yala/widgets/screens/accounts/widgets/chart/chart_slider/chart_slider.dart';

const KNOB_WIDTH = 46.7;
const CHART_HEIGHT = 113.0;

class Chart extends StatelessWidget {
  const Chart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207 + KNOB_WIDTH / 2,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: (KNOB_WIDTH / 2)),
              height: CHART_HEIGHT,
              width: double.infinity,
              child: CustomPaint(
                painter: ChartPainter(data: null),
              ),
            ),
            Container(
              child: ChartSlider(
                widgetWidth: constraints.maxWidth,
                widgetHeight: constraints.maxHeight,
                knobWidth: KNOB_WIDTH,
                chartHeight: CHART_HEIGHT,
              ),
            ),
          ],
        );
      }),
    );
  }
}
