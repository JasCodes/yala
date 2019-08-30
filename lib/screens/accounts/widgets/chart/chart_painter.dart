import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as mat;
// import 'package:vector_math/vector_math_lists.dart';
import 'package:yala/packages/utils.dart';

class ChartPainter extends CustomPainter {
  final List<double> data;
  final bool padLast;

  ChartPainter({
    this.data,
    this.padLast = true,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var _data = data.toList();
    // var _data = [15.0, 18.0, 8.0, 25.0, 20.0, 15.0];
    var sData = scaledArray(_data, maxV: size.height).toList();
    sData = sData.reversed.toList();
    if (padLast) sData.add(sData.last);

    Path path = Path();
    path.moveTo(0, size.height - sData[0]);

    for (int i = 0; i < sData.length - 1; i++) {
      var x1 = size.width * (i) / (sData.length - 1);
      var x2 = size.width * (i + 1) / (sData.length - 1);

      var y1 = size.height - sData[i];
      // print(y1);
      var y2 = size.height - sData[i + 1];
      final double cx = x1 + (x2 - x1) / 2;
      path.cubicTo(cx, y1, cx, y2, x2, y2);
    }
    Paint paint = Paint()
      ..color = mat.Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.5;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
