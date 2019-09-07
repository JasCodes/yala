import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_observer.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_pay_period_page/sections/payroll_date_slider_section.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_pay_period_page/sections/payroll_month_slider_section/payroll_month_slider_section.dart';

import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/texts/tx.dart';

class PayrollPayPeriodPage extends HookWidget {
  const PayrollPayPeriodPage({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    useObserver();

    // final store = Provider.of<PayrollStore>(context);
    // final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);

    print(ModalRoute.of(context).settings);
    return BottomPinScrollView(
      bottomMargin: 100,
      color: Style.backgroundColor,
      child: Container(
        child: Column(
          children: [
            H(28.3),
            TxBM(14.7, 'Select Payroll Period'),
            H(5.7),
            TxG(12, 'Swipe to switch months'),
            H(15.3),
            PayrollMonthSliderSection(),
            H(31.7),
            TxBM(14.7, 'Select Payday'),
            H(13.3),
            PayrollDateSliderSection(),
          ],
        ),
      ),
      bottomPinChild: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.7),
        child: ButtonX(
          isActive: formWizard.validList[index],
          title: 'continue',
          onTap: () {
            formWizard.pageController.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          },
        ),
      ),
    );
  }
}
