import 'package:flutter/material.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:yala/screens/accounts/sections/accounts_info_section/accounts_upcoming_payment_section.dart';
import 'package:yala/screens/transfer/transfer_screen/sections/trasfer_arc_section/transfer_quick_link_section.dart';
import 'package:yala/static/style.dart';

class TransferArcSection extends StatelessWidget {
  const TransferArcSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 45.0),
          child: ShapeOfView(
            elevation: 0,
            // height: 1000,
            shape: ArcShape(
              direction: ArcDirection.Inside,
              height: 25,
              position: ArcPosition.Top,
            ),
            // height: 500,
            child: Container(
              color: Style.backgroundColor,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 41.7 + 25,
                  ),
                  // AccountsUpcomingPaymentSection(),
                  Container(
                    color: Colors.transparent,
                  ),
                  // SizedBox(
                  //   height: 100,
                  // )
                ],
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Upcoming Payments',
                style: TextStyle(
                  fontSize: 13.3,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
            ),
            SizedBox(
              height: 7.7,
            ),
            AccountsUpcomingPaymentSection(),
            Container(
              color: Style.backgroundColor,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 23.3,
                  ),
                  TransferQuickLinkSection(),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
