import 'package:flutter/material.dart';
import 'package:yala/widgets/layout/screens/screen_accounts.dart';
import 'package:yala/widgets/layout/screens/screen_dev.dart';
import 'package:yala/widgets/layout/screens/screen_invoices.dart';
import 'package:yala/widgets/layout/screens/screen_payroll.dart';

enum Screen {
  dev,
  accounts,
  invoices,
  payroll,
  more,
  transfer,
  billpayment,
  request
}

const Map<Screen, Widget> screenMap = {
  Screen.dev: ScreenDev(),
  Screen.accounts: ScreenAccounts(),
  Screen.invoices: ScreenInvoices(),
  Screen.payroll: ScreenPayroll(),
};
