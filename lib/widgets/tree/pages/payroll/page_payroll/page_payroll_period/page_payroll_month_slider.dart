import 'package:flutter/material.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll/page_payroll_period/page_payroll_month_slider_circle.dart';

class PagePayrollMonthSlider extends StatelessWidget {
  const PagePayrollMonthSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PagePayrollMonthSliderCircle(),
        ],
      ),
    );
  }
}
