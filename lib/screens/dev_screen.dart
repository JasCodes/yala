import 'package:flutter/material.dart';
import 'package:yala/screens/invoices/invoice_add_client_screen/invoice_add_client_screen.dart';
import 'package:yala/screens/invoices/invoice_create_screen/invoice_create_screen.dart';

class DevScreen extends StatelessWidget {
  const DevScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return AccountsScreen();
    return InvoiceCreateScreen();
  }
}