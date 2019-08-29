import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/primitives/iconx.dart';
import 'package:yala/layout/bottom_nav/bottom_nav_store.dart';

class BottomNavFAB extends StatelessWidget {
  const BottomNavFAB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<BottomNavStore>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 14),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Style.secondaryColor,
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              customBorder: CircleBorder(),
              onTap: () {
                store.isExchange = !store.isExchange;
              },
              child: Container(
                width: 66.7,
                height: 66.7,
                child: Observer(
                  builder: (_) {
                    return AnimatedSwitcher(
                      duration: Duration(milliseconds: 200),
                      child: !store.isExchange
                          ? IconX(
                              IconsX.transfer,
                              key: UniqueKey(),
                              color: Colors.white,
                              size: 24,
                            )
                          : IconX(
                              Icons.close,
                              key: UniqueKey(),
                              color: Colors.white,
                              size: 30,
                            ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
