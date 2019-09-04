import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_autorun.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/inputs/currency_amount_field.dart';
import 'package:yala/widgets/inputs/date_time_field.dart';
import 'package:yala/widgets/inputs/text_field_x.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class PayrollSalaryDetailsPage extends HookWidget {
  final int index;
  const PayrollSalaryDetailsPage({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // useObserver();
    final store = Provider.of<PayrollStore>(context);
    final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);
    useAutorun((_) {
      formWizard.validList[index] = store.isValidDetails;
      formWizard.validList[index + 1] = store.isValidDetails;
    });
    if (store.currency.value == null) {
      store.currency.value = user.accounts.first.currencyCode;
    }

    return BottomPinScrollView(
      bottomMargin: 100,
      padding: EdgeInsets.symmetric(horizontal: 20.3),
      color: Style.backgroundColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.5 - 20.3),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30.3),
            TextFieldX(
              store.invoiceId,
              labelColor: Style.blackColor,
              nextFocusField: store.invoiceDesc,
              // textInputType: TextInputType,
            ),
            SizedBox(height: 27.3),
            TextFieldX(
              store.invoiceDesc,
              minLines: 1,
              maxLines: 5,
              textInputAction: TextInputAction.newline,
              labelColor: Style.blackColor,
              // nextFocusField: store.companyAddress,
            ),
            SizedBox(height: 27.3),
            CurrencyAmountField(
              amountState: store.amount,
              currencyState: store.currency,
            ),
            SizedBox(height: 27.3),
            DateTimeField(
              state: store.dueDate,
            ),
            SizedBox(height: 27.3),
          ],
        ),
      ),
      bottomPinChild: Observer(
        builder: (_) {
          return ButtonX(
            isActive: formWizard.validList[index],
            title: 'continue',
            onTap: () {
              formWizard.pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            },
          );
        },
      ),
    );
  }
}
