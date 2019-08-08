import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/counter.dart';
import 'package:yala/models/ui.dart';

class Providers extends StatelessWidget {
  const Providers({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BcCounter>.value(
          value: BcCounter(),
        ),
        ChangeNotifierProvider<BcUI>.value(
          value: BcUI(),
        ),
      ],
      child: child,
    );
  }
}
