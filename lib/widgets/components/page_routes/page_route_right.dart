import 'package:flutter/material.dart';

class PageRouteRight extends PageRoute<void> {
  PageRouteRight({
    @required this.builder,
    RouteSettings settings,
  })  : assert(builder != null),
        super(settings: settings, fullscreenDialog: false);

  final WidgetBuilder builder;
  @override
  bool get opaque => true;

  @override
  Color get barrierColor => null;

  @override
  String get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration(milliseconds: 350);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    final result = builder(context);
    return SlideTransition(
      transformHitTests: false,
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: Semantics(
        scopesRoute: true,
        explicitChildNodes: true,
        child: ScaleTransition(
          child: result,
          scale: Tween<double>(
            begin: 1,
            end: 0.9,
          ).animate(secondaryAnimation),
        ),
      ),
    );
  }
}

// SlideTransition(
//                     transformHitTests: false,
//                     position: new Tween<Offset>(
//                       begin: const Offset(1.0, 0.0),
//                       end: Offset.zero,
//                     ).animate(animation),
//                     child: new SlideTransition(
//                       position: new Tween<Offset>(
//                         begin: Offset.zero,
//                         end: const Offset(-1.0, 0.0),
//                       ).animate(secondaryAnimation),
//                       child: child
//                       import 'package:flutter/material.dart';
