import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/widgets/views/invoice/invoice.dart';
import 'package:yala/widgets/views/invoice/invoice_create.dart';
// import 'package:yala/widgets/routes/right.dart';

class ScreenInvoices extends StatelessWidget {
  const ScreenInvoices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/invoice/create':
            return PageTransition(
              child: ViewInvoiceCreate(),
              type: PageTransitionType.rightToLeft,
            );
          // case '/':
          //   return PageTransition(
          //     child: ViewInvoice(),
          //   );
          default:
            return PageTransition(
              child: ViewInvoice(),
              type: PageTransitionType.rightToLeft,
            );
        }
        // return RouteRight(
        //   builder: (_) {
        //     switch (settings.name) {
        //       case '/invoice/create':
        //         return ViewInvoice();
        //       case '/':
        //         return ViewInvoice();
        //       default:
        //         return ViewInvoice();
        //     }
        //   },
        // );
      },
    );
  }
}
