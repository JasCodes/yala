import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/models/employee.dart';
import 'package:yala/packages/utils.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_salary_details_page/sections/payroll_salary_details_field/payroll_salary_details_item.dart';

// Include generated file
part 'payroll_store.g.dart';

// The store-class
@store
abstract class _PayrollStore {
  static const double BACK_FRACTION = 0.37;
  static const double FRONT_FRACTION = 0.8;

  _PayrollStore(ObservableList<Employee> employees) {
    backPageController.addListener(() {
      print(backPageController.page);
      frontPageController.jumpTo(
          backPageController.position.pixels / BACK_FRACTION * FRONT_FRACTION);
    });
    salaryDetialItems =
        ObservableList<PayrollSalaryDetailItem>.of(employees.map((emp) {
      var item = PayrollSalaryDetailItem()
        ..selected = true
        ..employee = emp
        ..amount = emp.salary;
      return item;
    }).toList());
    autorun((_) {
      if (employees.length > salaryDetialItems.length) {
        var salaryDetailItem = PayrollSalaryDetailItem()
          ..selected = true
          ..employee = employees.last
          ..amount = employees.last.salary;
        // payrollStore.salaryDetialItems.add(salaryDetailItem);
        salaryDetialItems.add(salaryDetailItem);
      }
    });
  }

  PageController backPageController =
      PageController(initialPage: 10000, viewportFraction: BACK_FRACTION);
  PageController frontPageController =
      PageController(initialPage: 10000, viewportFraction: FRONT_FRACTION);

  @observable
  DateTime payDate = getLastDayOfMonth();

  @observable
  DateTime payrollMonth = getLastDayOfMonth();

  @observable
  ObservableList<PayrollSalaryDetailItem> salaryDetialItems;

  double get totalPay {
    double total = 0;
    salaryDetialItems.forEach((salaryDetialItem) {
      if (salaryDetialItem.selected) {
        total += salaryDetialItem.amount;
      }
    });
    return total;
  }
}
