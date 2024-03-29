import 'package:flutter/material.dart';
import 'package:yala/navigation/navigators/accounts_navigator.dart';
import 'package:yala/navigation/navigators/billpayment_navigator.dart';
import 'package:yala/navigation/navigators/dev_navigator.dart';
import 'package:yala/navigation/navigators/invoices_navigator.dart';
import 'package:yala/navigation/navigators/payroll_navigator.dart';
import 'package:yala/navigation/navigators/request_navigator.dart';
import 'package:yala/navigation/navigators/transfer_navigator.dart';

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
  NavigatorX.dev: DevNavigator(),
  NavigatorX.more: DevNavigator(),
  NavigatorX.accounts: AccountsNavigator(),
  NavigatorX.invoices: InvoicesNavigator(),
  NavigatorX.payroll: PayrollNavigator(),
  NavigatorX.transfer: TransferNavigator(),
  NavigatorX.billpayment: BillPaymentNavigator(),
  NavigatorX.request: RequestNavigator(),
};
