import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/screens/transfer/transfer_intl/transfer_intl_screen.dart';
import 'package:yala/screens/transfer/transfer_screen/transfer_screen.dart';

class TransferNavigator extends StatelessWidget {
  const TransferNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case TransferIntlScreen.route:
            return PageTransition(
              // child: Container(),
              child: TransferIntlScreen(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              // child: Container(),
              child: TransferScreen(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
