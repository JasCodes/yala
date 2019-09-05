// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class PayrollStore extends _PayrollStore {
  PayrollStore(ObservableList<Employee> employees) : super(employees);

  final _$payDateAtom = Atom(name: '_PayrollStore.payDate');

  @override
  DateTime get payDate {
    _$payDateAtom.context.enforceReadPolicy(_$payDateAtom);
    _$payDateAtom.reportObserved();
    return super.payDate;
  }

  @override
  set payDate(DateTime value) {
    _$payDateAtom.context.conditionallyRunInAction(() {
      super.payDate = value;
      _$payDateAtom.reportChanged();
    }, _$payDateAtom, name: '${_$payDateAtom.name}_set');
  }

  final _$payrollMonthAtom = Atom(name: '_PayrollStore.payrollMonth');

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

  final _$salaryDetialItemsAtom = Atom(name: '_PayrollStore.salaryDetialItems');

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
