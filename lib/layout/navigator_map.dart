import 'package:flutter/material.dart';
import 'package:yala/layout/navigators/accounts_navigator.dart';
import 'package:yala/layout/navigators/billpayment_navigator.dart';
import 'package:yala/layout/navigators/dev_navigator.dart';
import 'package:yala/layout/navigators/invoices_navigator.dart';
import 'package:yala/layout/navigators/payroll_navigator.dart';
import 'package:yala/layout/navigators/request_navigator.dart';
import 'package:yala/layout/navigators/transfer_navigator.dart';

enum NavigatorX {
  dev,
  accounts,
  invoices,
  payroll,
  more,
  transfer,
  billpayment,
  request
}

const Map<NavigatorX, Widget> navigatorMap = {
  NavigatorX.dev: AccountsNavigator(),
  NavigatorX.more: DevNavigator(),
  NavigatorX.accounts: AccountsNavigator(),
  NavigatorX.invoices: InvoicesNavigator(),
  NavigatorX.payroll: PayrollNavigator(),
  NavigatorX.transfer: TransferNavigator(),
  NavigatorX.billpayment: BillPaymentNavigator(),
  NavigatorX.request: RequestNavigator(),
};
