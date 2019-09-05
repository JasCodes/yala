import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/scaffolds/list_wheel_scroll_view_x.dart';

class PayrollDateSliderSection extends HookWidget {
  const PayrollDateSliderSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedItem = useState(0);
    final store = Provider.of<PayrollStore>(context);
    final controller = FixedExtentScrollController();
    return Container(
      height: 105,
      child: ListWheelScrollViewX(
        controller: controller,
        onSelectedItemChanged: (value) => selectedItem.value = value,
        scrollDirection: Axis.horizontal,
        itemExtent: 90 + 11.3,
        builder: (context, index) {
          var active = selectedItem.value == index;
          var _border = null;
          if (active) {
            _border = Border.all(
              color: Style.primaryColor,
              width: 1.7,
            );
          }
          var date = store.payDate.add(Duration(days: index));

          var weekday = Intl().date('EEEE').format(date);
          var day = Intl().date('dd').format(date);
          var month = Intl().date('MMM yyyy').format(date);
          var holiday = weekday == 'Saturday' || weekday == 'Friday';
          var activeX = active && !holiday;
          var style = TextStyle(
            color: Style.greyColor,
            fontSize: 10.7,
            fontWeight: FontWeight.w500,
          );
          var dayStyle = TextStyle(
            fontFamily: Style.primaryFont,
            color: holiday ? Style.greyColor : Style.blackColor,
            fontSize: 40,
            fontWeight: activeX ? FontWeight.w500 : FontWeight.w300,
          );
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            margin: EdgeInsets.symmetric(
              horizontal: 11.3 / 2,
              vertical: 5,
            ),
            // padding: EdgeInsets.only(left: 11.7, top: 11.7),
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              border: _border,
              borderRadius: BorderRadius.circular(3.3),
              boxShadow: [
                BoxShadow(
                  color: Color(0x14000000),
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  spreadRadius: 0,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(3.3),
              child: Stack(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment(
                      activeX ? -0.5 : -0.5,
                      activeX ? -0.83 : -0.83,
                    ),
                    child: Text(
                      weekday,
                      style: style,
                    ),
                  ),
                  Align(
                    alignment: Alignment(
                      activeX ? -0.52 : -0.54,
                      activeX ? -0.35 : -0.35,
                    ),
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 300),
                      style: dayStyle,
                      child: Text(
                        day,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.50, 0.40),
                    child: Text(
                      month,
                      style: style,
                    ),
                  ),
                  Opacity(
                    opacity: holiday ? 1 : 0,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 20,
                        width: double.infinity,
                        color: Style.redColor,
                        child: Align(
                          alignment: Alignment(0, -0.3),
                          child: Text(
                            'Bank Holiday',
                            style: TextStyle(
                              fontSize: 10.7,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// return Container(
//       color: Colors.indigo,
//       height: 500,
//       child: OverflowBox(
//         minHeight: 100,
//         maxHeight: 250,
//         child: LayoutBuilder(
//           builder: (context, c) {
//             print(c);
//             return Container(
//               height: 10,
//               color: Colors.black,
//             );
//           },
//         ),
//       ),
//     );

// return OverflowBox(
//     maxHeight: 500,
//     minHeight: 500,
//     child: LayoutBuilder(
//       builder: (
//         context,
//         constraints,
//       ) {
//         print(constraints);
//         return Container(
//           height: constraints.maxWidth,
//           color: Colors.green,
//           child: Transform.rotate(
//             angle: 1 * -pi / 2,
//             child: ListWheelScrollView.useDelegate(
//               itemExtent: WIDTH * 1.2,
//               diameterRatio: 100000,
//               // clipToSize: true,
//               // useMagnifier: true,
//               // controller: ScrollController(initialScrollOffset: 10),
//               // renderChildrenOutsideViewport: true,
//               // squeeze: 0.8,
//               // offAxisFraction: -50,
//               physics: FixedExtentScrollPhysics(),
//               childDelegate: ListWheelChildBuilderDelegate(
//                 builder: (context, i) {
//                   return Transform.rotate(
//                     angle: 1 * pi / 2,
//                     child: Container(
//                       // height: 10,
//                       width: WIDTH,
//                       // height: HEIGHT,
//                       // width: constraints.maxWidth,
//                       color: RandomColor().randomColor(
//                         colorHue: ColorHue.orange,
//                         colorSaturation: ColorSaturation.mediumSaturation,
//                       ),
//                       child: Center(child: Text(i.toString())),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ),
//         );
//       },
//     ),
//   );
