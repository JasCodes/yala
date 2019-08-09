import 'package:flutter/material.dart';
import 'package:yala/layout/screen.dart';
import 'package:yala/stores/bottom_nav.dart';
import 'package:yala/views/dashboard.dart';
import 'package:yala/views/detail.dart';
import 'package:yala/widgets/routes/transparent.dart';

class ScreenAccounts extends StatelessWidget {
  const ScreenAccounts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      screenId: EBottomNav.accounts,
      child: Navigator(
        onGenerateRoute: (RouteSettings settings) {
          return RouteTransparent(builder: (_) {
            switch (settings.name) {
              case '/detail':
                return ViewDetail();
              default:
                return ViewDashbord();
            }
          });
        },
      ),
    );
  }
}

// Navigator.push(
//   context,
//   RouteTransparent(
//     // maintainState: true,
//     // fullscreenDialog: true,
//     builder: (_) {
//       return
//     },
//   ),
// );
