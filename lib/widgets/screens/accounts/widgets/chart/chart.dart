import 'package:flutter/material.dart';
import 'package:yala/widgets/screens/accounts/widgets/chart/chart_painter.dart';
import 'package:yala/widgets/screens/accounts/widgets/chart/chart_slider.dart';

class Chart extends StatelessWidget {
  const Chart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 207,
      child: Stack(
        children: <Widget>[
          Container(
            height: 113,
            width: double.infinity,
            child: CustomPaint(
              painter: ChartPainter(data: null),
            ),
          ),
          ChartSlider(),
        ],
      ),
    );
  }
}
