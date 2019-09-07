// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_run_payroll_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class PayrollRunPayrollStore extends _PayrollRunPayrollStore {
  PayrollRunPayrollStore(
      ObservableList<Employee> employees, FormWizardStore form)
      : super(employees, form);

  Computed<DateTime> _$selectedDayDateTimeComputed;

  @override
  DateTime get selectedDayDateTime => (_$selectedDayDateTimeComputed ??=
          Computed<DateTime>(() => super.selectedDayDateTime))
      .value;
  Computed<dynamic> _$isPayPeriodValidComputed;

  @override
  dynamic get isPayPeriodValid => (_$isPayPeriodValidComputed ??=
          Computed<dynamic>(() => super.isPayPeriodValid))
      .value;
  Computed<double> _$totalPayComputed;

  @override
  double get totalPay =>
      (_$totalPayComputed ??= Computed<double>(() => super.totalPay)).value;

  final _$selectedDayIndexAtom =
      Atom(name: '_PayrollRunPayrollStore.selectedDayIndex');

  @override
  int get selectedDayIndex {
    _$selectedDayIndexAtom.context.enforceReadPolicy(_$selectedDayIndexAtom);
    _$selectedDayIndexAtom.reportObserved();
    return super.selectedDayIndex;
  }

  @override
  set selectedDayIndex(int value) {
    _$selectedDayIndexAtom.context.conditionallyRunInAction(() {
      super.selectedDayIndex = value;
      _$selectedDayIndexAtom.reportChanged();
    }, _$selectedDayIndexAtom, name: '${_$selectedDayIndexAtom.name}_set');
  }

  final _$payrollMonthAtom = Atom(name: '_PayrollRunPayrollStore.payrollMonth');

  @override
  DateTime get payrollMonth {
    _$payrollMonthAtom.context.enforceReadPolicy(_$payrollMonthAtom);
    _$payrollMonthAtom.reportObserved();
    return super.payrollMonth;
  }

  @override
  set payrollMonth(DateTime value) {
    _$payrollMonthAtom.context.conditionallyRunInAction(() {
      super.payrollMonth = value;
      _$payrollMonthAtom.reportChanged();
    }, _$payrollMonthAtom, name: '${_$payrollMonthAtom.name}_set');
  }

  final _$salaryDetialItemsAtom =
      Atom(name: '_PayrollRunPayrollStore.salaryDetialItems');

  @override
  ObservableList<PayrollSalaryDetailItem> get salaryDetialItems {
    _$salaryDetialItemsAtom.context.enforceReadPolicy(_$salaryDetialItemsAtom);
    _$salaryDetialItemsAtom.reportObserved();
    return super.salaryDetialItems;
  }

  @override
  set salaryDetialItems(ObservableList<PayrollSalaryDetailItem> value) {
    _$salaryDetialItemsAtom.context.conditionallyRunInAction(() {
      super.salaryDetialItems = value;
      _$salaryDetialItemsAtom.reportChanged();
    }, _$salaryDetialItemsAtom, name: '${_$salaryDetialItemsAtom.name}_set');
  }
}
