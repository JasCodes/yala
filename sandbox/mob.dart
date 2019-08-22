import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/counter.dart';
import 'package:yala/mobstore.dart';
import 'package:yala/static/style.dart';

class Mob extends StatelessWidget {
  const Mob({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Provider<MobStore>(
        builder: (context) => MobStore(),
        child: Container(
          color: Style.backgroundColor,
          child: Counter(),
        ),
      );
}
