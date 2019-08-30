import 'package:flutter/material.dart';
import 'package:yala/screens/accounts/widgets/chart/chart.dart';
// import 'package:yala/screens/accounts/widgets/chart/chart.dart';

class ChartSliderKnob extends StatelessWidget {
  final double left;
  final double height;
  const ChartSliderKnob({
    Key key,
    this.left,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 150),
      bottom: 0,
      left: left,
      child: ClipPath(
        clipper: _Clipper(Chart.KNOB_WIDTH),
        // shape: _Clipper(),
        clipBehavior: Clip.antiAlias,
        child: Container(
          constraints: BoxConstraints(minHeight: height),
          // height: height,
          width: Chart.KNOB_WIDTH,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(70),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: Chart.KNOB_WIDTH),
            child: Align(
              alignment: Alignment.topCenter,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  '+ USD 50,00000',
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
