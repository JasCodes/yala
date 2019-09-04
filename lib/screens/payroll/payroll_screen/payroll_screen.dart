import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_pay_period_page/payroll_pay_period_page.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_salary_details_page.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_submit_page.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard.dart';

class PayrollScreen extends StatelessWidget {
  static const route = '/invoice/create';

  const PayrollScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _items = () sync* {
      int i = 0;
      yield FormWizardItem(
        title: 'Pay Period',
        child: PayrollPayPeriodPage(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Invoice Details',
        child: PayrollSalaryDetailsPage(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Submit Payroll',
        child: PayrollSubmitPage(
          index: i++,
        ),
      );
    }()
        .toList();
    return Provider<PayrollStore>(
      builder: (_) => PayrollStore(),
      child: Scaffold(
        appBar: AppBarX(
          title: 'Run a New Payroll',
        ),
        body: FormWizard(
          items: _items,
        ),
      ),
    );
  }
}
