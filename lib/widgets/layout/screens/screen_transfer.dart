import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:yala/widgets/pages/transfer/page_transfer.dart';
import 'package:yala/widgets/pages/transfer/page_transfer_create.dart';

class ScreenTransfer extends StatelessWidget {
  const ScreenTransfer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/transfer/create':
            return PageTransition(
              child: PageTransferCreate(),
              type: PageTransitionType.rightToLeft,
            );
          default:
            return PageTransition(
              child: PageTransfer(),
              type: PageTransitionType.rightToLeft,
            );
        }
      },
    );
  }
}
