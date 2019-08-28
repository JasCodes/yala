import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/components/scaffolds/list_wheel_scroll_view_x.dart';
import 'package:yala/widgets/tree/pages/payroll/page_payroll_store.dart';

class PagePayrollDaySlider extends HookWidget {
  const PagePayrollDaySlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedItem = useState(0);
    final store = Provider.of<PagePayrollStore>(context);
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
              color: Color(0xff5a61f7),
              width: 1.7,
            );
          }
          var date = store.currentMonth.add(Duration(days: index));

          var weekday = Intl().date('EEEE').format(date);
          var day = Intl().date('dd').format(date);
          var month = Intl().date('MMM yyyy').format(date);
          var style = TextStyle(
            color: Style.greyColor,
            fontSize: 10.7,
            fontWeight: FontWeight.w500,
          );
          var dayStyle = TextStyle(
            fontFamily: Style.primaryFont,
            color: Style.blackColor,
            fontSize: 40,
            fontWeight: active ? FontWeight.w500 : FontWeight.w300,
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
            child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment(-0.55, -0.8),
                  child: Text(
                    weekday,
                    style: style,
                  ),
                ),
                Align(
                  alignment: Alignment(
                    active ? -0.65 : -0.60,
                    active ? -0.25 : -0.25,
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
                  alignment: Alignment(-0.55, 0.55),
                  child: Text(
                    month,
                    style: style,
                  ),
                ),
              ],
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
