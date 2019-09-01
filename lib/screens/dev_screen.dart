import 'package:flutter/material.dart';
import 'package:yala/screens/accounts/accounts_screen.dart';
import 'package:yala/screens/invoices/invoice_add_client_screen/invoice_add_client_screen.dart';

class DevScreen extends StatelessWidget {
  const DevScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return AccountsScreen();
    return InvoiceAddClientScreen();
  }
}
