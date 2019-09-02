import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/screens/invoices/invoice_add_client_screen/invoice_add_client_screen.dart';

class ViewDev extends HookWidget {
  ViewDev({Key key}) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    // return PageSpring();
    // return PageInvoiceCreate();
    // return PageInvoiceAddClient();
    // return PageInvoiceAddClient();
    // return Container();
    // return InvoiceCreateSelectClientSection(
    //   index: 0,
    // );
    // return InvoiceCreateScreen();
    return InvoiceAddClientScreen();
  }
}
