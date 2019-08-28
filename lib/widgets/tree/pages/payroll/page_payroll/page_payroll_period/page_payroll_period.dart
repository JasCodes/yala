import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:yala/packages/radial_slider.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll/page_payroll_period/page_payroll_day_slider.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll/page_payroll_period/page_payroll_month_slider.dart';

class Xpath extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0;

    Path path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width * 0.2, size.height / 2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class PagePayrollPeriod extends StatelessWidget {
  final int index;
  const PagePayrollPeriod({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.backgroundColor,
      child: Column(
        children: <Widget>[
          SizedBox(height: 28.3),
          Center(
            child: Text(
              'Select Payroll Period',
              style: TextStyle(
                color: Style.blackColor,
                fontSize: 14.7,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 5.7),
          Center(
            child: Text(
              'Swipe to switch months',
              style: TextStyle(
                color: Style.greyColor,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(height: 15.3),
          PagePayrollMonthSlider(),
          SizedBox(height: 31.7),
          Text(
            'Select Payday',
            style: TextStyle(
              color: Style.blackColor,
              fontSize: 14.7,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 13.3),
          PagePayrollDaySlider(),
          Container(
            height: 200,
            child: RadialSlider(
              color: Style.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
