import 'package:mobx/mobx.dart';

// Include generated file
part 'payroll.g.dart';

// The store-class
@store
abstract class _Payroll {
  @observable
  DateTime periodMonth;
  @observable
  DateTime payDay;
  @observable
  int employeeCount;
  @observable
  double total;
}
