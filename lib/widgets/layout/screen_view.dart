import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/widgets/layout/screen.dart';

class ScreenView extends HookWidget {
  ScreenView({
    Key key,
    @required this.screen,
    @required this.child,
  }) : super(key: key);

  // final GlobalKey gk;
  final Screen screen;
  final Widget child;
  final gk = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final _fader = useAnimationController(
        lowerBound: 0, upperBound: 1, duration: Duration(milliseconds: 400));

    final _scaler = useAnimationController(
        lowerBound: 0.8, upperBound: 1, duration: Duration(milliseconds: 400));

    return Observer(
      builder: (_) {
        final id = Stores.BottomNav.screen;
        final isAnimating = _fader.isAnimating || _scaler.isAnimating;
        final isActive = id == screen;
        final isIgnorePointer = isAnimating && !isActive;
        final isOffstage = !isAnimating && !isActive;

        if (id == screen) {
          _fader.forward();
          _scaler.forward();
        } else {
          _fader.reverse();
          _scaler.reverse();
        }
        return ScaleTransition(
          scale: _scaler.drive(CurveTween(curve: Curves.fastOutSlowIn)),
          child: FadeTransition(
            opacity: _fader.drive(CurveTween(curve: Curves.fastOutSlowIn)),
            child: IgnorePointer(
              ignoring: isIgnorePointer,
              child: Offstage(
                offstage: isOffstage,
                child: FadeTransition(
                  opacity:
                      _fader.drive(CurveTween(curve: Curves.fastOutSlowIn)),
                  child: KeyedSubtree(
                    key: gk,
                    child: child,
                  ),
                ),
              ),
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
