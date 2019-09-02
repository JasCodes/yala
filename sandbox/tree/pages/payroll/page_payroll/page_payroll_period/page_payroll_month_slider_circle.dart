import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class _Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var painterDot = Paint();
    painterDot.style = PaintingStyle.stroke;
    painterDot.strokeWidth = 2;
    painterDot.color = Style.primaryColor;

    var painterDotWhite = Paint();
    painterDotWhite.style = PaintingStyle.fill;
    painterDotWhite.color = Colors.white;

    var radiusDot = (size.height * 0.08) * 0.5;
    var centerDot = Offset(size.width * 0.5, radiusDot);

    var painterCircle = Paint();
    painterCircle.color = Style.primaryColor;
    painterCircle.style = PaintingStyle.stroke;
    painterCircle.strokeWidth = 3;

    var radiusCircle = (size.height - radiusDot) * 0.5;
    var centerCircle = Offset(
      size.width * 0.5,
      centerDot.dy + radiusCircle,
    );
    canvas.drawCircle(centerCircle, radiusCircle, painterCircle);
    canvas.drawCircle(centerDot, radiusDot, painterDotWhite);
    canvas.drawCircle(centerDot, radiusDot, painterDot);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class PagePayrollMonthSliderCircle extends StatelessWidget {
  const PagePayrollMonthSliderCircle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _Painter(),
    );
  }
}
