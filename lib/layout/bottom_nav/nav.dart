import 'package:flutter/material.dart';
import 'package:yala/layout/bottom_nav/item.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/stores/bottom_nav.dart';
// import 'package:yala/widgets/patch/iconx.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomAppBar(
              elevation: 0,
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      BottomNavItem(
                        id: EBottomNav.accounts,
                        icon: AppIcons.accounts,
                        title: "Accounts",
                      ),
                      BottomNavItem(
                        id: EBottomNav.invoices,
                        icon: AppIcons.invoices,
                        title: "Invoices",
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      BottomNavItem(
                        id: EBottomNav.payroll,
                        icon: AppIcons.payroll,
                        title: "Payroll",
                      ),
                      BottomNavItem(
                        id: EBottomNav.more,
                        icon: AppIcons.more,
                        title: "More",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 5),
              child: RawMaterialButton(
                onPressed: () {},
                child: new Icon(
                  AppIcons.transfer,
                  color: Colors.white,
                  size: 22,
                ),
                shape: new CircleBorder(),
                disabledElevation: 0,
                elevation: 0,
                hoverElevation: 0,
                focusElevation: 0,
                highlightElevation: 0,
                fillColor: Color(0xfffbc415),
                padding: const EdgeInsets.all(28.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
