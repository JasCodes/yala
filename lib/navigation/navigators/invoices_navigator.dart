import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/screens/invoices/invoice_add_client_screen/invoice_add_client_screen.dart';
import 'package:yala/screens/invoices/invoice_create_screen/invoice_create_screen.dart';
import 'package:yala/screens/invoices/invoice_screen/invoice_screen.dart';

class InvoicesNavigator extends StatelessWidget {
  const InvoicesNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case InvoiceCreateScreen.route:
            return PageTransition(
              child: InvoiceCreateScreen(),
              type: PageTransitionType.rightToLeft,
            );
          case InvoiceAddClientScreen.route:
            return PageTransition(
              child: InvoiceAddClientScreen(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              child: InvoiceScreen(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
