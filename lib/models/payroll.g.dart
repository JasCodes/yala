// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class Payroll extends _Payroll {
  Payroll() : super();

  final _$periodMonthAtom = Atom(name: '_Payroll.periodMonth');

  @override
  DateTime get periodMonth {
    _$periodMonthAtom.context.enforceReadPolicy(_$periodMonthAtom);
    _$periodMonthAtom.reportObserved();
    return super.periodMonth;
  }

  @override
  set periodMonth(DateTime value) {
    _$periodMonthAtom.context.conditionallyRunInAction(() {
      super.periodMonth = value;
      _$periodMonthAtom.reportChanged();
    }, _$periodMonthAtom, name: '${_$periodMonthAtom.name}_set');
  }

  final _$payDayAtom = Atom(name: '_Payroll.payDay');

  @override
  DateTime get payDay {
    _$payDayAtom.context.enforceReadPolicy(_$payDayAtom);
    _$payDayAtom.reportObserved();
    return super.payDay;
  }

  @override
  set payDay(DateTime value) {
    _$payDayAtom.context.conditionallyRunInAction(() {
      super.payDay = value;
      _$payDayAtom.reportChanged();
    }, _$payDayAtom, name: '${_$payDayAtom.name}_set');
  }

  final _$employeeCountAtom = Atom(name: '_Payroll.employeeCount');

  @override
  int get employeeCount {
    _$employeeCountAtom.context.enforceReadPolicy(_$employeeCountAtom);
    _$employeeCountAtom.reportObserved();
    return super.employeeCount;
  }

  @override
  set employeeCount(int value) {
    _$employeeCountAtom.context.conditionallyRunInAction(() {
      super.employeeCount = value;
      _$employeeCountAtom.reportChanged();
    }, _$employeeCountAtom, name: '${_$employeeCountAtom.name}_set');
  }

  final _$totalAtom = Atom(name: '_Payroll.total');

  @override
  double get total {
    _$totalAtom.context.enforceReadPolicy(_$totalAtom);
    _$totalAtom.reportObserved();
    return super.total;
  }

  @override
  set total(double value) {
    _$totalAtom.context.conditionallyRunInAction(() {
      super.total = value;
      _$totalAtom.reportChanged();
    }, _$totalAtom, name: '${_$totalAtom.name}_set');
  }
}
