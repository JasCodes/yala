import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:yala/packages/utils.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/widgets/scaffolds/status_text.dart';
import 'package:yala/widgets/texts/tx.dart';

class CC extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var painterDot = Path();
    // painterDot.style = PaintingStyle.stroke;
    // painterDot.strokeWidth = 2;
    // painterDot.color = Style.primaryColor;

    // var painterDotWhite = Path();
    // painterDotWhite.style = PaintingStyle.fill;
    // painterDotWhite.color = Colors.white;

    var radiusDot = (size.height * 0.08) * 0.5;
    var centerDot = Offset(size.width * 0.5, radiusDot);

    // var painterCircle = Paint();
    // painterCircle.color = Style.primaryColor;
    // painterCircle.style = PaintingStyle.stroke;
    // painterCircle.strokeWidth = 3;

    var radiusCircle = (size.height - radiusDot) * 0.5;
    var centerCircle = Offset(
      size.width * 0.5,
      centerDot.dy + radiusCircle,
    );

    // var pAll = Path();
    // pAll.addRect(Rect.fromLTRB(0, 0, size.width, size.height));
    var path = Path();
    path.addOval(
      Rect.fromCircle(
        center: centerCircle,
        radius: radiusCircle,
      ),
    );
    return path;

    // return Path.combine(PathOperation.difference, pAll, path);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class PayrollMonthFrontSlider extends StatelessWidget {
  const PayrollMonthFrontSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PayrollStore>(context);

    return ClipPath(
      clipper: CC(),
      child: IgnorePointer(
        child: PageView.builder(
          pageSnapping: false,
          // physics: AlwaysScrollableScrollPhysics(),
          controller: store.frontPageController,
          itemBuilder: (context, index) {
            var _index = index - 10000;
            var month = Intl().date('MMM ‘yy').format(getOffsetMonth(_index));
            var sPeriod =
                Intl().date('dd.MM.yyyy').format(getOffsetMonth(_index));
            var ePeriod = Intl().date('dd.MM.yyyy').format(
                  getOffsetMonth(_index + 1).subtract(
                    Duration(days: 1),
                  ),
                );
            var due =
                getOffsetMonth(_index + 1).difference(DateTime.now()).inDays;
            var period = '$sPeriod - $ePeriod';
            Widget status = Container();
            if (_index == 0) {
              status = StatusText(
                text: 'due in ${due} days',
                dot: true,
                type: StatusTextType.RED,
              );
            } else if (_index < 0) {
              status = StatusText(
                text: 'Paid',
                dot: false,
                type: StatusTextType.GREEN,
              );
            }

            // getOffsetMonth()
// 01.05.2019 - 31.05.2019
            return ClipPath(
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    H(10),
                    TxPM(40, month),
                    H(1),
                    TxGM(12.7, period),
                    H(1),
                    status,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
