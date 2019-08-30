import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_painter.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_slider/chart_slider.dart';
// import 'package:yala/screens/accounts/widgets/chart/chart_store.dart';

class Chart extends StatelessWidget {
  static const KNOB_WIDTH = 46.7;
  static const CHART_HEIGHT = 113.0;
  static const WIDGET_HEIGHT = 207 + KNOB_WIDTH / 2;

  final int index;
  const Chart(this.index, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<User>(context);
    // final chartStore = Provider.of<ChartStore>(context);
    var balances = store.accounts[index].balances;
    return Container(
      height: WIDGET_HEIGHT,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: (KNOB_WIDTH / 2)),
                height: CHART_HEIGHT,
                width: double.infinity,
                child: CustomPaint(
                  painter: ChartPainter(data: balances),
                ),
              ),
              Container(
                child: ChartSlider(
                  widgetWidth: constraints.maxWidth,
                  widgetHeight: constraints.maxHeight,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
