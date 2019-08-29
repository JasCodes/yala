List<DateTime> getLastMonthNames(int num) {
  List<DateTime> ret = [];
  var date = DateTime.now();
  for (int i = 0; i < num; i++) {
    ret.add(DateTime.utc(date.year, date.month - i, date.day));
  }
  return ret;
}
