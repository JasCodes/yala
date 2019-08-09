import 'package:flutter/material.dart';
import 'package:yala/layout/screens/accounts.dart';
import 'package:yala/layout/screens/invoices.dart';
import 'package:yala/layout/screens/payroll.dart';

class Screens extends StatelessWidget {
  const Screens({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScreenAccounts(),
        ScreenInvoices(),
        ScreenPayroll(),
      ],
    );
  }
}
