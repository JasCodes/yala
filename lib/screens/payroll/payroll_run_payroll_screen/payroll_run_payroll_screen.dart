import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_pay_period_page/payroll_pay_period_page.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_salary_details_page/payroll_salary_details_page.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_submit_page.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/store/payroll_run_payroll_store.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class PayrollRunPayrollScreen extends StatelessWidget {
  static const route = '/invoice/create';

  const PayrollRunPayrollScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    var _items = [
      FormWizardItem(
        title: 'Salary Details',
        child: PayrollSalaryDetailsPage(
          index: 1,
        ),
      ),
      FormWizardItem(
        title: 'Pay Period',
        child: PayrollPayPeriodPage(
          index: 0,
        ),
      ),
      FormWizardItem(
        title: 'Submit Payroll',
        child: PayrollSubmitPage(
          index: 2,
        ),
      ),
    ];
    final _formStore = FormWizardStore(_items.length);
    return Provider<PayrollRunPayrollStore>(
      builder: (_) => PayrollRunPayrollStore(user.employees, _formStore),
      child: Scaffold(
        appBar: AppBarX(
          title: 'Run a New Payroll',
        ),
        body: FormWizard(
          store: _formStore,
          items: _items,
        ),
      ),
    );
  }
}
