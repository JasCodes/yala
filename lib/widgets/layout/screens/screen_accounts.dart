import 'package:flutter/material.dart';
import 'package:yala/widgets/page_routes/page_route_transparent.dart';
import 'package:yala/widgets/pages/page_accounts.dart';

class ScreenAccounts extends StatelessWidget {
  const ScreenAccounts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return RouteTransparent(
          builder: (_) {
            switch (settings.name) {
              default:
                return PageAccounts();
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
