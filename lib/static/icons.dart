import 'package:flutter/material.dart';

int charToInt(String char) {
  return char.runes.toList()[0];
}

IconData faLight(String char) {
  return IconData(charToInt(char), fontFamily: 'FontAwesome5ProLight');
}

IconData faRegular(String char) {
  return IconData(charToInt(char), fontFamily: 'FontAwesome5ProRegular');
}

IconData faSolid(String char) {
  return IconData(charToInt(char), fontFamily: 'FontAwesome5ProSolid');
}

class AppIcons {
  static var accounts = faSolid('');
  static var invoices = faSolid('');
  static var payroll = faSolid('');
  static var more = faSolid('');
  static var transfer = faSolid('');
  static var client = faSolid('');
  static var invoicesBig = faSolid('');
  static var money = faSolid('');
  static var card = faSolid('');
  static var request = faSolid('');
  static var invoice_add = faSolid('');
}
