import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice_add_client.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice_create/page_invoice_create.dart';

class ScreenInvoices extends StatelessWidget {
  const ScreenInvoices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/invoice/create':
            return PageTransition(
              child: PageInvoiceCreate(),
              type: PageTransitionType.rightToLeft,
            );
          case '/invoice/add_client':
            return PageTransition(
              child: PageInvoiceAddClient(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              child: PageInvoice(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
