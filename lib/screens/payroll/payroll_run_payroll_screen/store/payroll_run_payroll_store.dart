import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/models/employee.dart';
import 'package:yala/packages/utils.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_salary_details_page/sections/payroll_salary_details_field/payroll_salary_details_item.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

// Include generated file
part 'payroll_run_payroll_store.g.dart';

// The store-class
@store
abstract class _PayrollRunPayrollStore {
  static const double BACK_FRACTION = 0.37;
  static const double FRONT_FRACTION = 0.8;

  _PayrollRunPayrollStore(
      ObservableList<Employee> employees, FormWizardStore form) {
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
    autorun((_) {
      form.validList[0] = isPayPeriodValid;
      form.validList[1] = totalPay > 0;
      form.validList[2] = true;
    });
  }

  // Pay Period

  PageController backPageController =
      PageController(initialPage: 10000, viewportFraction: BACK_FRACTION);
  PageController frontPageController =
      PageController(initialPage: 10000, viewportFraction: FRONT_FRACTION);

  @observable
  int selectedDayIndex = 0;

  final currentMonthLastDay = getLastDayOfMonth();

  DateTime dayIndexToDateTime(int index) {
    return currentMonthLastDay.add(Duration(days: index));
  }

  @computed
  DateTime get selectedDayDateTime {
    return currentMonthLastDay.add(Duration(days: selectedDayIndex));
  }

  @observable
  DateTime payrollMonth = getOffsetMonth(0);

  @observable
  ObservableList<PayrollSalaryDetailItem> salaryDetialItems;

  @computed
  get isPayPeriodValid {
    return !(selectedDayDateTime.weekday == 5 ||
        selectedDayDateTime.weekday == 6);
  }
  //////

  @computed
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
