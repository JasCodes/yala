import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/screens/accounts/widgets/chart/chart.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_slider/chart_slider_knob.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_store.dart';

List<DateTime> _getLastMonthNames(int num) {
  List<DateTime> ret = [];
  var date = DateTime.now();
  for (int i = 0; i < num; i++) {
    ret.add(DateTime.utc(date.year, date.month - i, date.day));
  }
  return ret;
}

class ChartSlider extends StatefulWidget {
  final double widgetWidth;
  final double widgetHeight;

  const ChartSlider({
    Key key,
    this.widgetWidth,
    this.widgetHeight,
  }) : super(key: key);

  @override
  _ChartSliderState createState() => _ChartSliderState();
}

class _ChartSliderState extends State<ChartSlider> with WidgetsBindingObserver {
  double _left;
  bool _down = false;
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _left = (6 / 7 * widget.widgetWidth - (Chart.KNOB_WIDTH / 2));
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    // _onDragUp(null);
  }

  _onDrag(dd) {
    setState(() {
      _down = true;
      _left = dd.globalPosition.dx - Chart.KNOB_WIDTH / 2;
    });
  }

  _onDragUp(ChartStore store) {
    setState(() {
      double index;
      if (_down) {
        index = (7 / widget.widgetWidth * (_left + Chart.KNOB_WIDTH / 2));
        if (index < 1) index = 1;
        if (index > 6) index = 6;
        store.knobIndex = 6 - index.round();
      }
      _left = ((6 - store.knobIndex) * widget.widgetWidth / 7) -
          (Chart.KNOB_WIDTH / 2);
      _down = false;
    });
  }

  Widget _buildMonthRow() {
    final List<Widget> _months = [];
    _getLastMonthNames(6).forEach((date) {
      var month = Intl().date('MMM').format(date);
      _months.insert(
        0,
        Container(
          width: Chart.KNOB_WIDTH,
          child: Container(
            child: Text(
              month,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.7,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: _months,
    );
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ChartStore>(context);

    if (!_down) {
      _onDragUp(store);
    }
    return GestureDetector(
      onHorizontalDragStart: _onDrag,
      onHorizontalDragDown: _onDrag,
      onHorizontalDragUpdate: _onDrag,
      onTapUp: (dd) => _onDragUp(store),
      onHorizontalDragEnd: (dd) => _onDragUp(store),
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Align(
              // alignment: Alignment.bottomCenter,
              alignment: Alignment(-1, 0.85),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: Chart.KNOB_WIDTH / 2),
                child: _buildMonthRow(),
              ),
            ),
            ChartSliderKnob(
              left: _left,
              height: (widget.widgetHeight - Chart.CHART_HEIGHT * 1),
              // knobWidth: widget.knobWidth,
            ),
          ],
        ),
      ),
    );
  }
}
