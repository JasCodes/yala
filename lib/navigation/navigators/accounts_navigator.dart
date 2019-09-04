import 'package:flutter/material.dart';
import 'package:yala/widgets/page_routes/page_route_transparent.dart';
import 'package:yala/screens/accounts/accounts_screen.dart';

class AccountsNavigator extends StatelessWidget {
  const AccountsNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return RouteTransparent(
          builder: (_) {
            switch (settings.name) {
              default:
                return AccountsScreen();
            }
          },
        );
      },
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
