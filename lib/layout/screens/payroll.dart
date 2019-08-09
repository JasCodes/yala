import 'package:flutter/material.dart';
import 'package:yala/layout/screen.dart';
import 'package:yala/stores/bottom_nav.dart';
import 'package:yala/widgets/app_bar.dart';

class ScreenPayroll extends StatelessWidget {
  const ScreenPayroll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      screenId: EBottomNav.payroll,
      child: Scaffold(
        appBar: AppBarX(
          title: 'Payroll',
        ),
      ),
    );
  }
}
