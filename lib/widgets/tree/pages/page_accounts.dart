import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/components/boxes/list_white_div.dart';

class PageAccounts extends StatelessWidget {
  const PageAccounts({Key key}) : super(key: key);

  Widget monthchart(BuildContext context) {
    final fromDate = DateTime(2019, 01, 22);
    final toDate = DateTime.now();

    final date1 = DateTime.now().subtract(Duration(days: 2));
    final date2 = DateTime.now().subtract(Duration(days: 3));

    final date3 = DateTime.now().subtract(Duration(days: 35));
    final date4 = DateTime.now().subtract(Duration(days: 36));

    final date5 = DateTime.now().subtract(Duration(days: 65));
    final date6 = DateTime.now().subtract(Duration(days: 64));

    return Center(
      child: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width,
        child: BezierChart(
          bezierChartScale: BezierChartScale.MONTHLY,
          fromDate: fromDate,
          toDate: toDate,
          selectedDate: toDate,
          footerDateTimeBuilder: (datetime, scale) {
            var formatter = DateFormat('MMM');
            return formatter.format(datetime);
          },
          series: [
            BezierLine(
              label: "Duty",
              onMissingValue: (dateTime) {
                if (dateTime.month.isEven) {
                  return 10.0;
                }
                return 5.0;
              },
              data: [
                DataPoint<DateTime>(value: 10, xAxis: date1),
                DataPoint<DateTime>(value: 50, xAxis: date2),
                DataPoint<DateTime>(value: 20, xAxis: date3),
                DataPoint<DateTime>(value: 80, xAxis: date4),
                DataPoint<DateTime>(value: 10, xAxis: date5),
                DataPoint<DateTime>(value: 100, xAxis: date6),
              ],
            ),
          ],
          config: BezierChartConfig(
            showDataPoints: false,
            showVerticalIndicator: false,
            verticalIndicatorFixedPosition: false,
            backgroundColor: Colors.transparent,
            footerHeight: 50.0,
            xAxisTextStyle: TextStyle(
              fontFamily: Style.primaryFont,
            ),
          ),
        ),
      ),
    );
  }

  Widget anilist1(BuildContext context) {
    return Column(
      children: <Widget>[
        ListWhiteDiv(
          store: Stores.TextNoti,
        ),
        RaisedButton(
          onPressed: () {
            Stores.TextNoti.titles.insert(0, 'value');
            Stores.TextNoti.titles = Stores.TextNoti.titles;
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarX(
        title: 'Dashboard',
        isTransparent: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Placeholder(
              color: Colors.white,
              fallbackHeight: 300,
            ),
            Placeholder(
              color: Colors.white,
              fallbackHeight: 300,
            ),
          ],
        ),
      ),
    );
  }
}
