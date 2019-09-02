import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:yala/tree/pages/transfer/page_transfer.dart';
// import 'package:yala/tree/pages/transfer/page_transfer_international.dart';

class TransferNavigator extends StatelessWidget {
  const TransferNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/transfer/international':
            return PageTransition(
              // child: PageTransferInternational(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              // child: PageTransfer(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
