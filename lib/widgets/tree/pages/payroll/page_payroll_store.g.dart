// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_payroll_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class PagePayrollStore extends _PagePayrollStore {
  PagePayrollStore() : super();

  final _$currentMonthAtom = Atom(name: '_PagePayrollStore.currentMonth');

  @override
  DateTime get currentMonth {
    _$currentMonthAtom.context.enforceReadPolicy(_$currentMonthAtom);
    _$currentMonthAtom.reportObserved();
    return super.currentMonth;
  }

  @override
  set currentMonth(DateTime value) {
    _$currentMonthAtom.context.conditionallyRunInAction(() {
      super.currentMonth = value;
      _$currentMonthAtom.reportChanged();
    }, _$currentMonthAtom, name: '${_$currentMonthAtom.name}_set');
  }
}
