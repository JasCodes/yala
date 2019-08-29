import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as mat;
import 'package:vector_math/vector_math_lists.dart';

class ChartPainter extends CustomPainter {
  final Vector2List data;
  final bool padLast;

  ChartPainter({
    this.data,
    this.padLast = true,
  });

  Iterable<double> _scaledArray(List<double> val,
      {double maxV, double minV = 0.0}) {
    var _max = val.reduce(max);
    var _min = val.reduce(min);
    var scaleVal = val.map((val) => (val - _min) / (_max - _min));
    var reScaleVal = scaleVal.map((val) => ((val) * (maxV - minV) - minV));
    return reScaleVal;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var _data = [15.0, 18.0, 8.0, 25.0, 20.0, 15.0];
    var sData = _scaledArray(_data, maxV: size.height).toList();
    if (padLast) sData.add(sData.last);

    Path path = Path();
    path.moveTo(0, size.height - sData[0]);

    for (int i = 0; i < sData.length - 1; i++) {
      var x1 = size.width * (i + 1) / sData.length;
      var x2 = size.width * (i + 2) / sData.length;

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
