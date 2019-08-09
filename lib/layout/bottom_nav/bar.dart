import 'package:flutter/material.dart';
import 'package:yala/layout/bottom_nav/button.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/stores/bottom_nav.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BottomAppBar(
        // elevation: 0,
        child: Container(
          decoration: new BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0x19000000),
                  offset: Offset(0, -40),
                  blurRadius: 100,
                  spreadRadius: 0)
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BottomNavButton(
                  id: EBottomNav.accounts,
                  icon: AppIcons.accounts,
                  title: "Accounts",
                ),
                BottomNavButton(
                  id: EBottomNav.invoices,
                  icon: AppIcons.invoices,
                  title: "Invoices",
                ),
                SizedBox(
                  width: 60,
                ),
                BottomNavButton(
                  id: EBottomNav.payroll,
                  icon: AppIcons.payroll,
                  title: "Payroll",
                ),
                BottomNavButton(
                  id: EBottomNav.more,
                  icon: AppIcons.more,
                  title: "More",
                  isMenu: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
