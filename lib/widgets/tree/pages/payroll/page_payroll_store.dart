import 'package:mobx/mobx.dart';

// Include generated file
part 'page_payroll_store.g.dart';

DateTime _getLastDayOfMonth() {
  var date = DateTime.now();
  return DateTime.utc(date.year, date.month + 1, 0);
}

// The store-class
@store
abstract class _PagePayrollStore {
  @observable
  DateTime currentMonth = _getLastDayOfMonth();
}
