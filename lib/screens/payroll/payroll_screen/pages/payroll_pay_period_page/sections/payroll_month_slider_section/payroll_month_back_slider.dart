import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/packages/utils.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/widgets/texts/tx.dart';

class PayrollMonthBackSlider extends StatefulWidget {
  const PayrollMonthBackSlider({Key key}) : super(key: key);

  @override
  _PayrollMonthBackSliderState createState() => _PayrollMonthBackSliderState();
}

class _PayrollMonthBackSliderState extends State<PayrollMonthBackSlider> {
  // PageController pageController;

  @override
  void initState() {
    // final store = Provider.of<PayrollStore>(context);

    // pageController = PageController(initialPage: 10000, viewportFraction: 1);
    // pageController.addListener(() {
    // store.page = pageController.page;
    // print(pageController.page);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PayrollStore>(context);

    // final gk = GlobalKey();
    // ScrollController x;
    // x.offset
    // store.pageController.jumpTo
    return PageView.builder(
      // key: gk,
      controller: store.backPageController,
      // onPageChanged: (v) => print(v),
      itemBuilder: (context, index) {
        var _index = index - 10000;
        var month = Intl().date('MMM` yy').format(getOffsetMonth(_index));

        return ClipPath(
          child: Container(
            child: Center(
              child: TxGB(20, month),
            ),
          ),
        );
      },
    );
  }
}
