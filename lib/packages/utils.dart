import 'dart:math';

Iterable<double> scaledArray(List<double> val,
    {double maxV, double minV = 0.0}) {
  var _max = val.reduce(max);
  var _min = val.reduce(min);
  var scaleVal = val.map((val) => (val - _min) / (_max - _min));
  var reScaleVal = scaleVal.map((val) => ((val) * (maxV - minV) + minV));
  return reScaleVal;
}

DateTime getLastDayOfMonth() {
  var date = DateTime.now();
  return DateTime.utc(date.year, date.month + 1, 0);
}

DateTime getOffsetMonth(int offset) {
  DateTime date = DateTime.now();
  return DateTime(date.year, date.month + offset, 1);
}
