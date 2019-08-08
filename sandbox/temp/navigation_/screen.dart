import 'package:flutter/material.dart';

class Screen {
  const Screen(this.index, this.title, this.icon);
  final int index;
  final String title;
  final IconData icon;
}

const List<Screen> allScreens = <Screen>[
  Screen(0, 'Accounts', Icons.home),
  Screen(1, 'Invoices', Icons.business),
  Screen(2, 'Payroll', Icons.school),
  Screen(3, 'More', Icons.flight)
];
