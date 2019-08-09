import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/static/style.dart';
import 'package:yala/stores/bottom_nav.dart';
import 'package:yala/widgets/animated/iconx.dart';
import 'package:yala/widgets/animated/text.dart';

class BottomNavButton extends StatelessWidget {
  BottomNavButton({
    Key key,
    @required this.id,
    @required this.icon,
    @required this.title,
    this.isMenu = false,
  }) : super(key: key);

  final EBottomNav id;
  final IconData icon;
  final String title;
  final bool isMenu;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 70,
        child: Material(
          type: MaterialType.transparency,
          child: Observer(
            builder: (_) {
              Color color = Stores.BottomNav.id == id
                  ? Style.appPrimaryColor
                  : Style.inactive;
              return InkWell(
                // radius: 20,
                customBorder: CircleBorder(),
                onTap: () {
                  if (!isMenu) Stores.BottomNav.id = id;
                  Stores.BottomNav.isExchange = false;
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
                      AnimatedText(
                        title,
                        duration: Duration(milliseconds: 300),
                        style: TextStyle(
                          color: color,
                          fontSize: 12.7,
                          fontWeight: FontWeight.w500,
                        ),
                      )
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
