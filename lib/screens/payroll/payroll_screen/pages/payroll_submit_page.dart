import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
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
    // final store = Provider.of<PayrollStore>(context);
    // final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);

    return BottomPinScrollView(
      bottomMargin: 100,
      padding: EdgeInsets.symmetric(horizontal: 16.7),
      color: Style.backgroundColor,
      child: Container(
        padding: EdgeInsets.only(bottom: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(RADIUS),
          child: Column(
            children: <Widget>[
              H(15.3),
              Container(
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
                    TxW(
                      12.7,
                      'Payroll Period',
                      color: Colors.white.withOpacity(0.5),
                    ),
                    H(3.7),
                    H(19),
                    H(14),
                    H(19),
                    H(3.7),
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
              // formWizard.pageController.nextPage(
              //   duration: const Duration(milliseconds: 400),
              //   curve: Curves.easeInOut,
              // );
              // user.invoices.add(Invoice()
              //   ..invoice_id = invoiceNumber
              //   ..client = client
              //   ..currencyCode = store.currency.value
              //   ..amount = double.parse(store.amount.value)
              //   ..status = InvoiceStatus.Pending);
              Navigator.of(context).pop();
            },
          );
        },
      ),
    );
  }
}
