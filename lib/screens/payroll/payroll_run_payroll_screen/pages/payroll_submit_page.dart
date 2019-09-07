import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/packages/utils.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/store/payroll_run_payroll_store.dart';
import 'package:yala/static/formater.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/primitives/iconx.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/texts/tx.dart';

class PayrollSubmitPage extends StatelessWidget {
  static const RADIUS = 2.7;
  final int index;

  const PayrollSubmitPage({
    Key key,
    @required this.index,
  }) : super(key: key);

  // Widget _buildDesc(desc) {
  //   if (desc != null || desc == '')
  //     return Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: <Widget>[
  //         SizedBox(height: 25.3),
  //         Container(
  //           color: Style.greyColor,
  //           height: 0.3,
  //         ),
  //         SizedBox(height: 23.3),
  //         Text(
  //           "DESCRIPTION",
  //           style: TextStyle(
  //             color: Style.greyColor,
  //             fontSize: 10.7,
  //             fontWeight: FontWeight.w500,
  //             fontStyle: FontStyle.normal,
  //           ),
  //         ),
  //         SizedBox(height: 5.7),
  //         Text(
  //           desc,
  //           style: TextStyle(
  //             color: Style.primaryColor,
  //             fontSize: 48 / 3,
  //             fontWeight: FontWeight.w500,
  //             fontStyle: FontStyle.normal,
  //           ),
  //         ),
  //       ],
  //     );
  //   else
  //     return SizedBox();
  // }

  @override
  Widget build(BuildContext context) {
    // useObserver();
    final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);
    final store = Provider.of<PayrollRunPayrollStore>(context);
    var sPeriod = Intl().date('dd MMM yyyy').format(store.payrollMonth);
    var ePeriod = Intl().date('dd MMM yyyy').format(
        DateTime(store.payrollMonth.year, store.payrollMonth.month + 1, 0));
    var period = '$sPeriod - $ePeriod';
    var payDay =
        Intl().date('EEEE, dd MMM yyyy').format(store.selectedDayDateTime);
    var numEmp = 0;
    var curr = user.accounts[0].currencyCode.toString();
    var diff =
        Formatter.numC.format(user.accounts[0].balances[0] - store.totalPay);

    store.salaryDetialItems
        .forEach((item) => {numEmp += item.selected ? 1 : 0});
    return BottomPinScrollView(
      bottomMargin: 100,
      padding: EdgeInsets.symmetric(horizontal: 16.7),
      color: Style.backgroundColor,
      child: Container(
        width: 600,
        padding: EdgeInsets.only(bottom: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(RADIUS),
          child: Column(
            children: <Widget>[
              H(15.3),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(RADIUS),
                  gradient: Style.primaryGradient,
                ),
                child: Column(
                  children: <Widget>[
                    H(23),
                    TxWM(12, 'Kindly review your payroll details below'),
                    H(14),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconX(
                        IconsX.payroll,
                        color: Style.primaryColor,
                      ),
                    ),
                    H(19.3),
                    TxW(12.7, 'Payroll Period',
                        color: Colors.white.withOpacity(0.5)),
                    H(3.7),
                    TxWM(14, period),
                    H(19),
                    TxW(12.7, 'Payday', color: Colors.white.withOpacity(0.5)),
                    H(3.7),
                    TxWM(14, payDay),
                    H(19),
                    TxW(12.7, 'Number of Employees to Pay',
                        color: Colors.white.withOpacity(0.5)),
                    H(3.7),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TxWM(14, numEmp.toString()),
                        GestureDetector(
                          onTap: () {
                            formWizard.pageController.previousPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              TxWM(
                                14,
                                ' (View Details)',
                              ),
                              Transform.translate(
                                offset: Offset(7, 16),
                                child: Container(
                                  height: 1,
                                  width: 75,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    H(22.7),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 17),
                      height: 0.3,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    H(19),
                    TxW(12.7, 'Total Pay Amount',
                        color: Colors.white.withOpacity(0.5)),
                    H(3.7),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: TxW(16.7, curr),
                        ),
                        W(1.3),
                        TxWM(33.3, Formatter.numC.format(store.totalPay))
                      ],
                    ),
                    H(9),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.1),
                      padding: EdgeInsets.only(top: 9, bottom: 9.3),
                      child: Center(
                        child: TxWM(
                          12.7,
                          'Balance after Payroll : $curr $diff',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomPinChild: Observer(
        builder: (_) {
          return ButtonX(
            isActive: formWizard.validList[index],
            title: 'SEND THIS INVOICE',
            onTap: () {
              formWizard.pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
              // user.invoices.add(Invoice()
              //   ..invoice_id = invoiceNumber
              //   ..client = client
              //   ..currencyCode = store.currency.value
              //   ..amount = double.parse(store.amount.value)
              //   ..status = InvoiceStatus.Pending);
              // Navigator.of(context).pop();
            },
          );
        },
      ),
    );
  }
}
