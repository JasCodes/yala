import 'dart:math';

Iterable<double> scaledArray(List<double> val,
    {double maxV, double minV = 0.0}) {
  var _max = val.reduce(max);
  var _min = val.reduce(min);
  var scaleVal = val.map((val) => (val - _min) / (_max - _min));
  var reScaleVal = scaleVal.map((val) => ((val) * (maxV - minV) - minV));
  return reScaleVal;
}
