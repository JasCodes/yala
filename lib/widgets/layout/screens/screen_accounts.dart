import 'package:flutter/material.dart';
import 'package:yala/widgets/views/dashboard.dart';
import 'package:yala/widgets/routes/transparent.dart';

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
                return ViewDashbord();
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
