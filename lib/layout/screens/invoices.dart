import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/layout/screen.dart';
import 'package:yala/stores/bottom_nav.dart';
// import 'package:yala/views/dashboard.dart';
import 'package:yala/views/detail2.dart';
import 'package:yala/widgets/routes/transparent.dart';

class ScreenInvoices extends StatelessWidget {
  const ScreenInvoices({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Screen(
      screenId: EBottomNav.invoices,
      child: Navigator(
        onGenerateRoute: (RouteSettings settings) {
          return RouteTransparent(builder: (_) {
            switch (settings.name) {
              case '/detail':
                return ViewDetail2();
              default:
                return XXX();
            }
          });
        },
      ),
    );
  }
}

class XXX extends HookWidget {
  const XXX({
    Key key,
  }) : super(key: key);

  final x = 0.0;
  @override
  Widget build(BuildContext context) {
    final x = useState(0.0);

    final con = useAnimationController(
      // initialValue: 10,
      lowerBound: 10,
      upperBound: 1000,
      // duration: Duration(milliseconds: 3000),
    );
    // con.anim
    // con.addListener(() {});
    final anim = useAnimation(con);
    x.addListener(() {
      con.animateTo(
        x.value,
        duration: Duration(milliseconds: 400),
        curve: Curves.linear,
      );
    });
    // useEffect(() {
    //   print(x.value);
    //   con.animateTo(
    //     x.value,
    //     duration: Duration(milliseconds: 400),
    //     curve: Curves.linear,
    //   );
    //   return () {};
    // }, [x]);

    // con.animateBack(0);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'HI',
          style: TextStyle(
            fontSize: anim,
          ),
        ),
        RaisedButton(
          child: Text('+'),
          onPressed: () {
            x.value += 50;
            // con.animateTo(
            //   x.value,
            //   duration: Duration(milliseconds: 400),
            //   curve: Curves.linear,
            // );
          },
        ),
        RaisedButton(
          child: Text('-'),
          onPressed: () {
            x.value -= 50;
            // con.animateTo(
            //   x.value,
            //   duration: Duration(milliseconds: 400),
            //   curve: Curves.linear,
            // );
          },
        ),
      ],
    );
  }
}

// class x extends HookWidget {

//   @override
//   did

//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }

// class TestAnim extends HookWidget {
//   const TestAnim({
//     Key key,
//     this.size,
//   }) : super(key: key);

//   final double size;

//   @override
//   Widget build(BuildContext context) {
//     // final con = useAnimationController()
//     return Center(
//       child: Text(
//         'hi',
//         style: TextStyle(fontSize: size),
//       ),
//     );
//   }
// }
