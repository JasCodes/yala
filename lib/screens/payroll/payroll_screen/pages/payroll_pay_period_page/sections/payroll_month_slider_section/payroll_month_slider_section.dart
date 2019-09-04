import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_pay_period_page/sections/payroll_month_slider_section/payroll_month_back_slider.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_pay_period_page/sections/payroll_month_slider_section/payroll_month_front_slider.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_pay_period_page/sections/payroll_month_slider_section/payroll_month_slider_circle_section.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';

class PayrollMonthSliderSection extends StatelessWidget {
  const PayrollMonthSliderSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PayrollStore>(context);
    return Container(
      height: 186,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          PayrollMonthBackSlider(),
          PayrollMonthFrontSlider(),
          PayrollMonthSliderCircleSection(),
        ],
      ),
    );
  }
}
