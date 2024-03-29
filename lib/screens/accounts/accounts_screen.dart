import 'package:flutter/material.dart';
import 'package:yala/screens/accounts/sections/accounts_info_section/accounts_info_section.dart';
import 'package:yala/screens/accounts/sections/accounts_slider_section/accounts_slider_section.dart';
import 'package:yala/app_bar.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarX(
        title: 'Dashboard',
        isTransparent: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                AccountsSliderSection(),
                SizedBox(
                  height: 13.7,
                ),
                // AccountsInfoSection(),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: AccountsInfoSection(),
          )
        ],
      ),
    );
  }
}

// Widget monthchart(BuildContext context) {
//   final fromDate = DateTime(2019, 01, 22);
//   final toDate = DateTime.now();

//   final date1 = DateTime.now().subtract(Duration(days: 2));
//   final date2 = DateTime.now().subtract(Duration(days: 3));

//   final date3 = DateTime.now().subtract(Duration(days: 35));
//   final date4 = DateTime.now().subtract(Duration(days: 36));

//   final date5 = DateTime.now().subtract(Duration(days: 65));
//   final date6 = DateTime.now().subtract(Duration(days: 64));

//   return Center(
//     child: Container(
//       color: Colors.red,
//       height: MediaQuery.of(context).size.height * 0.5,
//       width: MediaQuery.of(context).size.width,
//       child: BezierChart(
//         bezierChartScale: BezierChartScale.MONTHLY,
//         fromDate: fromDate,
//         toDate: toDate,
//         selectedDate: toDate,
//         footerDateTimeBuilder: (datetime, scale) {
//           var formatter = DateFormat('MMM');
//           return formatter.format(datetime);
//         },
//         series: [
//           BezierLine(
//             label: "Duty",
//             onMissingValue: (dateTime) {
//               if (dateTime.month.isEven) {
//                 return 10.0;
//               }
//               return 5.0;
//             },
//             data: [
//               DataPoint<DateTime>(value: 10, xAxis: date1),
//               DataPoint<DateTime>(value: 50, xAxis: date2),
//               DataPoint<DateTime>(value: 20, xAxis: date3),
//               DataPoint<DateTime>(value: 80, xAxis: date4),
//               DataPoint<DateTime>(value: 10, xAxis: date5),
//               DataPoint<DateTime>(value: 100, xAxis: date6),
//             ],
//           ),
//         ],
//         config: BezierChartConfig(
//           showDataPoints: false,
//           showVerticalIndicator: false,
//           verticalIndicatorFixedPosition: false,
//           backgroundColor: Colors.transparent,
//           footerHeight: 50.0,
//           xAxisTextStyle: TextStyle(
//             fontFamily: Style.primaryFont,
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Widget anilist1(BuildContext context) {
//   return Column(
//     children: <Widget>[
//       ListWhiteDiv(
//         store: Stores.TextNoti,
//       ),
//       RaisedButton(
//         onPressed: () {
//           Stores.TextNoti.titles.insert(0, 'value');
//           Stores.TextNoti.titles = Stores.TextNoti.titles;
//         },
//       ),
//     ],
//   );
// }
