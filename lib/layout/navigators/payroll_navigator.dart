import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:yala/tree/pages/payroll/page_payroll/page_payroll.dart';
// import 'package:yala/tree/pages/payroll/page_payroll_add_employee.dart';

class PayrollNavigator extends StatelessWidget {
  const PayrollNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/payroll/employee/add':
            return PageTransition(
              child: Container(),
              // child: PagePayrollAddEmployee(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              child: Container(),
              // child: PagePayroll(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
