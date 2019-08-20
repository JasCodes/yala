import 'package:flutter/material.dart';
import 'package:yala/widgets/tree/screens/screen_accounts.dart';
import 'package:yala/widgets/tree/screens/screen_billpayment.dart';
import 'package:yala/widgets/tree/screens/screen_dev.dart';
import 'package:yala/widgets/tree/screens/screen_invoices.dart';
import 'package:yala/widgets/tree/screens/screen_payroll.dart';
import 'package:yala/widgets/tree/screens/screen_request.dart';
import 'package:yala/widgets/tree/screens/screen_transfer.dart';

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
  Screen.more: ScreenDev(),
  Screen.accounts: ScreenAccounts(),
  Screen.invoices: ScreenInvoices(),
  Screen.payroll: ScreenPayroll(),
  Screen.transfer: ScreenTransfer(),
  Screen.billpayment: ScreenBillPayment(),
  Screen.request: ScreenRequest(),
};
