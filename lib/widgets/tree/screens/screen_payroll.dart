import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll_add.dart';

class ScreenPayroll extends StatelessWidget {
  const ScreenPayroll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/payroll/add':
            return PageTransition(
              child: PagePayrollAdd(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              child: PagePayroll(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
