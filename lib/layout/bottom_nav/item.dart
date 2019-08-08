import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yala/animated/iconx.dart';
import 'package:yala/animated/text.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/stores/bottom_nav.dart';

class BottomNavItem extends StatelessWidget {
  BottomNavItem({
    Key key,
    @required this.id,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final EBottomNav id;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 70,
        child: Material(
          type: MaterialType.transparency,
          child: Observer(
            builder: (_) {
              Color color =
                  Stores.BottomNav.id == id ? Colors.green : Colors.blue;
              return InkWell(
                // radius: 20,
                customBorder: CircleBorder(),
                onTap: () => {Stores.BottomNav.id = id},
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
                        size: 25,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      AnimatedText(
                        title,
                        duration: Duration(milliseconds: 300),
                        style: TextStyle(color: color, fontSize: 12),
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
