import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/screens/payroll/payroll_employee_add_screen/payroll_employee_add_screen.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/payroll_run_payroll_screen.dart';
// import 'package:yala/tree/pages/payroll/page_payroll/page_payroll.dart';
// import 'package:yala/tree/pages/payroll/page_payroll_add_employee.dart';

class PayrollNavigator extends StatelessWidget {
  const PayrollNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case PayrollEmployeeAddScreen.route:
            return PageTransition(
              child: PayrollEmployeeAddScreen(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              child: PayrollRunPayrollScreen(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
