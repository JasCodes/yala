import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/primitives/animated_iconx.dart';
import 'package:yala/layout/bottom_nav/bottom_nav_store.dart';
import 'package:yala/layout/navigator_map.dart';

class BottomNavButton extends StatelessWidget {
  BottomNavButton({
    Key key,
    @required this.navigator,
    @required this.icon,
    @required this.title,
    this.isMenu = false,
  }) : super(key: key);

  final NavigatorX navigator;
  final IconData icon;
  final String title;
  final bool isMenu;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<BottomNavStore>(context);
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: 70,
        child: Material(
          type: MaterialType.transparency,
          child: Observer(
            builder: (_) {
              Color color = store.navigator == navigator
                  ? Style.primaryColor
                  : Style.inactiveColor;
              return InkWell(
                // radius: 20,
                customBorder: CircleBorder(),
                onTap: () {
                  if (!isMenu) store.navigator = navigator;
                  store.isExchange = false;
                },
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AnimatedIconX(
                        icon,
                        duration: Duration(milliseconds: 300),
                        color: color,
                        size: 18.7,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      AnimatedDefaultTextStyle(
                        style: TextStyle(
                          fontFamily: 'DINNextRoundedLTPro',
                          color: color,
                          fontSize: 12.7,
                          fontWeight: FontWeight.w500,
                        ),
                        duration: Duration(milliseconds: 300),
                        child: Text(
                          title,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
