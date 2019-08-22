import 'package:flutter/material.dart';
import 'package:yala/widgets/layout/bottom_nav/bottom_nav_button.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/widgets/layout/screen.dart';

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
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                BottomNavButton(
                  screen: Screen.accounts,
                  icon: IconsX.accounts,
                  title: "Accounts",
                ),
                BottomNavButton(
                  screen: Screen.invoices,
                  icon: IconsX.invoices,
                  title: "Invoices",
                ),
                SizedBox(
                  width: 60,
                ),
                BottomNavButton(
                  screen: Screen.payroll,
                  icon: IconsX.payroll,
                  title: "Payroll",
                ),
                BottomNavButton(
                  screen: Screen.more,
                  icon: IconsX.more,
                  title: "More",
                  // isMenu: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
