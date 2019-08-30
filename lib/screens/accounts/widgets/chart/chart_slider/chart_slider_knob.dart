import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/packages/utils.dart';
import 'package:yala/screens/accounts/widgets/chart/chart.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_store.dart';
// import 'package:yala/screens/accounts/widgets/chart/chart.dart';

class ChartSliderKnob extends StatelessWidget {
  final int pageIndex;
  final double left;
  final double height;
  const ChartSliderKnob(
    this.pageIndex, {
    Key key,
    this.left,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nf = NumberFormat('##,###,##.00', 'en_US');
    final store = Provider.of<User>(context);
    final chartStore = Provider.of<ChartStore>(context);
    var account = store.accounts[pageIndex];
    var currBalance = account.balances[chartStore.knobIndex];
    var prevBalance = account.balances[chartStore.knobIndex + 1];
    var deltaBalance = currBalance - prevBalance;
    var deltaBalanceString =
        '${deltaBalance >= 0 ? "+" : "-"} ${account.currencyCode.toString()} ${nf.format(deltaBalance.round())}';
    var sData =
        scaledArray(account.balances, minV: 150, maxV: 1 * Chart.WIDGET_HEIGHT)
            .toList();

    // var deltaBalancePer = (currBalance - prevBalance) / prevBalance * 100;

    return AnimatedPositioned(
      duration: Duration(milliseconds: 150),
      bottom: 0,
      left: left,
      child: ClipPath(
        clipper: _Clipper(Chart.KNOB_WIDTH),
        // shape: _Clipper(),
        clipBehavior: Clip.antiAlias,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          // constraints: BoxConstraints(minHeight: 120),
          height: sData[chartStore.knobIndex],
          width: Chart.KNOB_WIDTH,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(70),
          ),
          child: Container(
            margin: EdgeInsets.only(
              top: 15,
              bottom: Chart.KNOB_WIDTH + 5,
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: RotatedBox(
                quarterTurns: 3,
                child: FittedBox(
                  child: Text(
                    deltaBalanceString,
                    style: TextStyle(
                      fontSize: 12.7,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Clipper extends CustomClipper<Path> {
  final double knobWidth;
  _Clipper(this.knobWidth);
  @override
  Path getClip(Size size) {
    var pAll = Path();
    pAll.addRect(Rect.fromLTRB(0, 0, size.width, size.height));
    var path = Path();
    path.addOval(
      Rect.fromCircle(
          center: Offset(
            size.width / 2,
            size.height - knobWidth / 2,
          ),
          radius: knobWidth / 2 - 6),
    );

    return Path.combine(PathOperation.difference, pAll, path);
    // path.fillType = PathFillType.;
    // path.
    // return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
