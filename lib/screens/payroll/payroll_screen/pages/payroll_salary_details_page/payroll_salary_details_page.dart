import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/payroll/payroll_employee_add_screen/payroll_employee_add_screen.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_salary_details_page/sections/payroll_salary_details_field/payroll_salary_details_field.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/static/formater.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/primitives/animated_number.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/texts/tx.dart';

class PayrollSalaryDetailsPage extends StatelessWidget {
  static const double LEFT = 48; //31.3;

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

    // var emp = user.employees[1];
    // var sub =
    //     '${emp.id} / ${emp.currencyCode.toString()} ${Formatter.numC.format(emp.salary)} pm';

    // var cur = user.accounts[0].currencyCode.toString();
    return BottomPinScrollView(
      bottomMargin: 100,
      // padding: EdgeInsets.symmetric(horizontal: 20.3),
      color: Style.backgroundColor,
      child: Container(
        // padding: EdgeInsets.symmetric(horizontal: 0),
        padding: EdgeInsets.only(right: 14),
        child: Column(
          children: <Widget>[
            H(24.7),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: LEFT),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TxGM(12, 'Emp. Name, No. & Salary'),
                      ),
                      TxGM(12, 'Salary to Pay'),
                    ],
                  ),
                ),
                H(9.3),
                Container(
                  margin: EdgeInsets.only(left: LEFT),
                  color: Style.darkGreyColor.withOpacity(0.28),
                  height: 0.3,
                ),
                Container(
                  child: Column(
                    children: store.salaryDetialItems.map((item) {
                      return PayrollSalaryDetailsField(item);
                    }).toList(),
                  ),
                ),
                H(9.3),
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(PayrollEmployeeAddScreen.route);
                  },
                ),
                H(9.3),
              ],
            ),
          ],
        ),
      ),
      bottomPinChild: Observer(
        builder: (_) {
          store.salaryDetialItems;
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20.3),
            child: Column(
              children: <Widget>[
                TxBM(13.3, 'Total Pay Amount'),
                H(6.7),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: TxB(12, user.accounts[0].currencyCode.toString()),
                      padding: EdgeInsets.only(top: 3.5),
                    ),
                    W(3),
                    AnimatedNumber(
                      duration: Duration(milliseconds: 300),
                      number: store.totalPay,
                      format: Formatter.numC,
                      style: TextStyle(
                        fontSize: 24,
                        color: Style.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // TxPM(24, Formatter.numC.format(store.totalPay)),
                  ],
                ),
                H(24.7),
                ButtonX(
                  isActive: formWizard.validList[index],
                  title: 'continue',
                  onTap: () {
                    formWizard.pageController.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
