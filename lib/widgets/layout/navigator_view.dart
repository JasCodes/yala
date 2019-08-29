import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/widgets/layout/bottom_nav/bottom_nav_store.dart';
import 'package:yala/widgets/layout/navigator_map.dart';

class NavigatorView extends HookWidget {
  NavigatorView({
    Key key,
    @required this.navigator,
    @required this.child,
  }) : super(key: key);

  // final GlobalKey gk;
  final NavigatorX navigator;
  final Widget child;
  final globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final _fader = useAnimationController(
        lowerBound: 0, upperBound: 1, duration: Duration(milliseconds: 400));

    final _scaler = useAnimationController(
        lowerBound: 0.8, upperBound: 1, duration: Duration(milliseconds: 400));

    final store = Provider.of<BottomNavStore>(context);

    return Observer(
      builder: (_) {
        final id = store.navigator;
        final isAnimating = _fader.isAnimating || _scaler.isAnimating;
        final isActive = id == navigator;
        final isIgnorePointer = isAnimating && !isActive;
        // final isOffstage =!(isAnimating || isActive); //!isAnimating && !isActive;
        // print("$isActive ${_fader.isAnimating} ${_scaler.isAnimating}");
        // _fader.reset();
        // _scaler.reset();
        if (id == navigator) {
          _fader.forward();
          _scaler.forward();
        } else {
          _fader.reverse();
          _scaler.reverse();
        }
        return ScaleTransition(
          scale: _scaler,
          // scale: _scaler.drive(CurveTween(curve: Curves.fastOutSlowIn)),
          child: FadeTransition(
            opacity: _fader.drive(CurveTween(curve: Curves.fastOutSlowIn)),
            child: IgnorePointer(
              ignoring: !isActive, //isIgnorePointer,
              // child: Offstage(
              // offstage: !isActive, // !(_fader.isAnimating || isActive),
              child: FadeTransition(
                opacity: _fader.drive(CurveTween(curve: Curves.fastOutSlowIn)),
                child: KeyedSubtree(
                  key: globalKey,
                  child: child,
                ),
              ),
              // ),
            ),
          ),
        );

        // final Widget view = FadeTransition(
        //   opacity: _fader.drive(CurveTween(curve: Curves.fastOutSlowIn)),
        //   child: KeyedSubtree(key: gk, child: child),
        // );
        // if (index == currIndex) {
        //   _fader.forward();
        //   return view;
        // } else {
        //   _fader.reverse();
        //   if (_fader.isAnimating) {
        //     return IgnorePointer(child: view);
        //   }
        //   return Offstage(child: view);
        // }
      },
    );
  }
}
