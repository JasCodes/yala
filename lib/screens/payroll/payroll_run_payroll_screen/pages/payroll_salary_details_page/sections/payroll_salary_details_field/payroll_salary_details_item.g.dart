// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_salary_details_item.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class PayrollSalaryDetailItem extends _PayrollSalaryDetailItem {
  PayrollSalaryDetailItem() : super();

  final _$selectedAtom = Atom(name: '_PayrollSalaryDetailItem.selected');

  @override
  bool get selected {
    _$selectedAtom.context.enforceReadPolicy(_$selectedAtom);
    _$selectedAtom.reportObserved();
    return super.selected;
  }

  @override
  set selected(bool value) {
    _$selectedAtom.context.conditionallyRunInAction(() {
      super.selected = value;
      _$selectedAtom.reportChanged();
    }, _$selectedAtom, name: '${_$selectedAtom.name}_set');
  }

  final _$employeeAtom = Atom(name: '_PayrollSalaryDetailItem.employee');

  @override
  Employee get employee {
    _$employeeAtom.context.enforceReadPolicy(_$employeeAtom);
    _$employeeAtom.reportObserved();
    return super.employee;
  }

  @override
  set employee(Employee value) {
    _$employeeAtom.context.conditionallyRunInAction(() {
      super.employee = value;
      _$employeeAtom.reportChanged();
    }, _$employeeAtom, name: '${_$employeeAtom.name}_set');
  }

  final _$amountAtom = Atom(name: '_PayrollSalaryDetailItem.amount');

  @override
  double get amount {
    _$amountAtom.context.enforceReadPolicy(_$amountAtom);
    _$amountAtom.reportObserved();
    return super.amount;
  }

  @override
  set amount(double value) {
    _$amountAtom.context.conditionallyRunInAction(() {
      super.amount = value;
      _$amountAtom.reportChanged();
    }, _$amountAtom, name: '${_$amountAtom.name}_set');
  }
}
