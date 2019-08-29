import 'package:flutter/material.dart';
// import 'package:yala/widgets/screens/accounts/widgets/chart/chart.dart';

class ChartSliderKnob extends StatelessWidget {
  final double left;
  final double height;
  final double knobWidth;
  const ChartSliderKnob({
    Key key,
    this.left,
    this.height,
    this.knobWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 150),
      bottom: 0,
      left: left,
      child: ClipPath(
        clipper: _Clipper(knobWidth),
        // shape: _Clipper(),
        clipBehavior: Clip.antiAlias,
        child: Container(
          constraints: BoxConstraints(minHeight: height),
          // height: height,
          width: knobWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(70),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10, bottom: knobWidth),
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
