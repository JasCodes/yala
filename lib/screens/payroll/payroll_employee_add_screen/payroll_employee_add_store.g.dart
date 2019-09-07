// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_employee_add_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class PayrollEmployeeAddStore extends _PayrollEmployeeAddStore {
  PayrollEmployeeAddStore() : super();

  Computed<dynamic> _$isFormValidComputed;

  @override
  dynamic get isFormValid =>
      (_$isFormValidComputed ??= Computed<dynamic>(() => super.isFormValid))
          .value;

  final _$employeeNumberAtom =
      Atom(name: '_PayrollEmployeeAddStore.employeeNumber');

  @override
  FieldState<String> get employeeNumber {
    _$employeeNumberAtom.context.enforceReadPolicy(_$employeeNumberAtom);
    _$employeeNumberAtom.reportObserved();
    return super.employeeNumber;
  }

  @override
  set employeeNumber(FieldState<String> value) {
    _$employeeNumberAtom.context.conditionallyRunInAction(() {
      super.employeeNumber = value;
      _$employeeNumberAtom.reportChanged();
    }, _$employeeNumberAtom, name: '${_$employeeNumberAtom.name}_set');
  }

  final _$employeeNameAtom =
      Atom(name: '_PayrollEmployeeAddStore.employeeName');

  @override
  FieldState<String> get employeeName {
    _$employeeNameAtom.context.enforceReadPolicy(_$employeeNameAtom);
    _$employeeNameAtom.reportObserved();
    return super.employeeName;
  }

  @override
  set employeeName(FieldState<String> value) {
    _$employeeNameAtom.context.conditionallyRunInAction(() {
      super.employeeName = value;
      _$employeeNameAtom.reportChanged();
    }, _$employeeNameAtom, name: '${_$employeeNameAtom.name}_set');
  }

  final _$employeeCurrencyAtom =
      Atom(name: '_PayrollEmployeeAddStore.employeeCurrency');

  @override
  FieldState<CurrencyCode> get employeeCurrency {
    _$employeeCurrencyAtom.context.enforceReadPolicy(_$employeeCurrencyAtom);
    _$employeeCurrencyAtom.reportObserved();
    return super.employeeCurrency;
  }

  @override
  set employeeCurrency(FieldState<CurrencyCode> value) {
    _$employeeCurrencyAtom.context.conditionallyRunInAction(() {
      super.employeeCurrency = value;
      _$employeeCurrencyAtom.reportChanged();
    }, _$employeeCurrencyAtom, name: '${_$employeeCurrencyAtom.name}_set');
  }

  final _$employeeSalaryAtom =
      Atom(name: '_PayrollEmployeeAddStore.employeeSalary');

  @override
  FieldState<double> get employeeSalary {
    _$employeeSalaryAtom.context.enforceReadPolicy(_$employeeSalaryAtom);
    _$employeeSalaryAtom.reportObserved();
    return super.employeeSalary;
  }

  @override
  set employeeSalary(FieldState<double> value) {
    _$employeeSalaryAtom.context.conditionallyRunInAction(() {
      super.employeeSalary = value;
      _$employeeSalaryAtom.reportChanged();
    }, _$employeeSalaryAtom, name: '${_$employeeSalaryAtom.name}_set');
  }
}
