import 'package:flutter/material.dart';
import 'package:yala/layout/bottom_nav/bar.dart';
import 'package:yala/layout/bottom_nav/button_transaction.dart';
import 'package:yala/layout/transaction/panel.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          TransactionPanel(),
          BottomNavBar(),
          BottomNavButtonTransaction(),
        ],
      ),
    );
  }
}
