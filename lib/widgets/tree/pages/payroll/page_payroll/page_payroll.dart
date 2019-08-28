import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll/page_payroll_details.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll/page_payroll_period/page_payroll_period.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll/page_payroll_submit.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll_store.dart';

class PagePayroll extends StatelessWidget {
  const PagePayroll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _items = () sync* {
      int i = 0;
      yield FormWizardItem(
        title: 'Pay Period',
        child: PagePayrollPeriod(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Salary Details',
        child: PagePayrollDetails(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'SubmitPayroll',
        child: PagePayrollSubmit(
          index: i++,
        ),
      );
    }()
        .toList();
    return Scaffold(
        appBar: AppBarX(
          title: 'Run a New Payroll',
        ),
        body: Provider<PagePayrollStore>(
          builder: (context) => PagePayrollStore(),
          child: FormWizard(
            items: _items,
          ),
        ));
  }
}
// Navigator.pushNamed(context, '/payroll/employee/add');
