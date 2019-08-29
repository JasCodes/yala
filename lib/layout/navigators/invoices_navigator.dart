import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/tree/pages/invoice/invoice_page.dart';
import 'package:yala/tree/pages/invoice/page_invoice_add_client/page_invoice_add_client.dart';
import 'package:yala/tree/pages/invoice/page_invoice_create/page_invoice_create.dart';

class NavigatorObserverX extends NavigatorObserver {
  NavigatorObserverX(this.onNavigation);

  final VoidCallback onNavigation;

  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    onNavigation();
  }

  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    onNavigation();
  }
}

class InvoicesNavigator extends StatelessWidget {
  const InvoicesNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      observers: [NavigatorObserverX(() {})],
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
              child: InvoicePage(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
