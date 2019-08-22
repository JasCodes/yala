import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shape_of_view/shape_of_view.dart';
import 'package:yala/hooks/use_autorun.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/widgets/layout/bottom_nav/bottom_nav_sheet_button.dart';
import 'package:yala/widgets/layout/screen.dart';

class BottomNavSheet extends HookWidget {
  const BottomNavSheet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ac = useAnimationController(
      duration: Duration(milliseconds: 300),
    );
    final aOffset =
        Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset.zero).animate(ac);

    final aOpacity =
        useAnimation(ac.drive(CurveTween(curve: Curves.fastOutSlowIn)));

    useAutorun((_) {
      // print(Stores.BottomNav.isExchange);
      if (Stores.BottomNav.isExchange) {
        ac.forward();
      } else {
        ac.reverse();
      }
    });

    return IgnorePointer(
      ignoring: ac.isAnimating || !Stores.BottomNav.isExchange,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Stores.BottomNav.isExchange = false;
            },
            child: Opacity(
              opacity: aOpacity,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                child: Container(
                  color: Color(0xff302f3f).withOpacity(0.5),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideTransition(
              position: aOffset,
              child: ShapeOfView(
                child: Center(
                  child: Container(
                    color: Color(0xfff3f4f7),
                    child: Align(
                      alignment: Alignment(0, -0.45),
                      // alignment: Alignment.topCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          BottomNavSheetButton(
                            screen: Screen.transfer,
                            icon: IconsX.money,
                            title: 'Transfer',
                          ),
                          BottomNavSheetButton(
                            screen: Screen.billpayment,
                            icon: IconsX.card,
                            title: 'Bill Payment',
                          ),
                          BottomNavSheetButton(
                            screen: Screen.request,
                            icon: IconsX.request,
                            title: 'Request',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                height: 230,
                // elevation: 10,
                shape: ArcShape(
                  direction: ArcDirection.Outside,
                  height: 20,
                  position: ArcPosition.Top,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
