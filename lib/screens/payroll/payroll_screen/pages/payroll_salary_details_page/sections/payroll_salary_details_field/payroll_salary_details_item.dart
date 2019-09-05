import 'package:mobx/mobx.dart';
import 'package:yala/models/employee.dart';
// Include generated file
part 'payroll_salary_details_item.g.dart';

// The store-class
@store
abstract class _PayrollSalaryDetailItem {
  _PayrollSalaryDetailItem() {}
  @observable
  bool selected;
  @observable
  Employee employee;
  @observable
  double amount;
}
