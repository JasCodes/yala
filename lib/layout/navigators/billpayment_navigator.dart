import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:yala/tree/pages/bill_payment/page_billpayment.dart';
// import 'package:yala/tree/pages/bill_payment/page_billpayment_pay.dart';

class BillPaymentNavigator extends StatelessWidget {
  const BillPaymentNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/billpayment/pay':
            return PageTransition(
              // child: PageBillPaymentPay(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              // child: PageBillPayment(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
