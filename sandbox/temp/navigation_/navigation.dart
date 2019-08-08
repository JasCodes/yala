import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:yala/navigation/screen.dart';
import 'package:yala/navigation/screen_view.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation>
    with TickerProviderStateMixin<Navigation> {
  List<GlobalKey> _screenKeys;
  List<GlobalKey<NavigatorState>> _navigatorKeys;
  List<AnimationController> _faders;
  AnimationController _hide;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    _faders = allScreens.map<AnimationController>((Screen screen) {
      return AnimationController(
          vsync: this, duration: Duration(milliseconds: 200));
    }).toList();
    _faders[_currentIndex].value = 1.0;
    _screenKeys =
        List<GlobalKey>.generate(allScreens.length, (int index) => GlobalKey())
            .toList();
    _navigatorKeys = List<GlobalKey<NavigatorState>>.generate(
        allScreens.length, (int index) => GlobalKey()).toList();
    _hide = AnimationController(vsync: this, duration: kThemeAnimationDuration);
  }

  @override
  void dispose() {
    for (AnimationController controller in _faders) controller.dispose();
    _hide.dispose();
    super.dispose();
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    if (notification.depth == 0) {
      if (notification is UserScrollNotification) {
        final UserScrollNotification userScroll = notification;
        switch (userScroll.direction) {
          case ScrollDirection.forward:
            _hide.forward();
            break;
          case ScrollDirection.reverse:
            _hide.reverse();
            break;
          case ScrollDirection.idle:
            break;
        }
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final NavigatorState navigator =
            _navigatorKeys[_currentIndex].currentState;
        if (!navigator.canPop()) return true;
        navigator.pop();
        return false;
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: Scaffold(
          body: SafeArea(
            top: false,
            child: Stack(
              fit: StackFit.expand,
              children: allScreens.map((Screen screen) {
                final Widget view = FadeTransition(
                  opacity: _faders[screen.index]
                      .drive(CurveTween(curve: Curves.fastOutSlowIn)),
                  child: KeyedSubtree(
                    key: _screenKeys[screen.index],
                    child: ScreenView(
                      screen: screen,
                      navigatorKey: _navigatorKeys[screen.index],
                      onNavigation: () {
                        _hide.forward();
                      },
                    ),
                  ),
                );
                if (screen.index == _currentIndex) {
                  _faders[screen.index].forward();
                  return view;
                } else {
                  _faders[screen.index].reverse();
                  if (_faders[screen.index].isAnimating) {
                    return IgnorePointer(child: view);
                  }
                  return Offstage(child: view);
                }
              }).toList(),
            ),
          ),
          bottomNavigationBar: ClipRect(
            child: SizeTransition(
              sizeFactor: _hide,
              axisAlignment: -1.0,
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                items: allScreens.map((Screen screen) {
                  return BottomNavigationBarItem(
                      icon: Icon(screen.icon),
                      // backgroundColor: screen.color,
                      title: Text(screen.title));
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
