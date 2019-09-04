// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payroll_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class PayrollStore extends _PayrollStore {
  PayrollStore() : super();

  Computed<dynamic> _$isValidDetailsComputed;

  @override
  dynamic get isValidDetails => (_$isValidDetailsComputed ??=
          Computed<dynamic>(() => super.isValidDetails))
      .value;

  final _$payDayAtom = Atom(name: '_PayrollStore.payDay');

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

  final _$selectClientIdAtom = Atom(name: '_PayrollStore.selectClientId');

  @override
  FieldState<String> get selectClientId {
    _$selectClientIdAtom.context.enforceReadPolicy(_$selectClientIdAtom);
    _$selectClientIdAtom.reportObserved();
    return super.selectClientId;
  }

  @override
  set selectClientId(FieldState<String> value) {
    _$selectClientIdAtom.context.conditionallyRunInAction(() {
      super.selectClientId = value;
      _$selectClientIdAtom.reportChanged();
    }, _$selectClientIdAtom, name: '${_$selectClientIdAtom.name}_set');
  }

  final _$invoiceIdAtom = Atom(name: '_PayrollStore.invoiceId');

  @override
  FieldState<String> get invoiceId {
    _$invoiceIdAtom.context.enforceReadPolicy(_$invoiceIdAtom);
    _$invoiceIdAtom.reportObserved();
    return super.invoiceId;
  }

  @override
  set invoiceId(FieldState<String> value) {
    _$invoiceIdAtom.context.conditionallyRunInAction(() {
      super.invoiceId = value;
      _$invoiceIdAtom.reportChanged();
    }, _$invoiceIdAtom, name: '${_$invoiceIdAtom.name}_set');
  }

  final _$invoiceDescAtom = Atom(name: '_PayrollStore.invoiceDesc');

  @override
  FieldState<String> get invoiceDesc {
    _$invoiceDescAtom.context.enforceReadPolicy(_$invoiceDescAtom);
    _$invoiceDescAtom.reportObserved();
    return super.invoiceDesc;
  }

  @override
  set invoiceDesc(FieldState<String> value) {
    _$invoiceDescAtom.context.conditionallyRunInAction(() {
      super.invoiceDesc = value;
      _$invoiceDescAtom.reportChanged();
    }, _$invoiceDescAtom, name: '${_$invoiceDescAtom.name}_set');
  }

  final _$currencyAtom = Atom(name: '_PayrollStore.currency');

  @override
  FieldState<CurrencyCode> get currency {
    _$currencyAtom.context.enforceReadPolicy(_$currencyAtom);
    _$currencyAtom.reportObserved();
    return super.currency;
  }

  @override
  set currency(FieldState<CurrencyCode> value) {
    _$currencyAtom.context.conditionallyRunInAction(() {
      super.currency = value;
      _$currencyAtom.reportChanged();
    }, _$currencyAtom, name: '${_$currencyAtom.name}_set');
  }

  final _$amountAtom = Atom(name: '_PayrollStore.amount');

  @override
  FieldState<String> get amount {
    _$amountAtom.context.enforceReadPolicy(_$amountAtom);
    _$amountAtom.reportObserved();
    return super.amount;
  }

  @override
  set amount(FieldState<String> value) {
    _$amountAtom.context.conditionallyRunInAction(() {
      super.amount = value;
      _$amountAtom.reportChanged();
    }, _$amountAtom, name: '${_$amountAtom.name}_set');
  }

  final _$dueDateAtom = Atom(name: '_PayrollStore.dueDate');

  @override
  FieldState<DateTime> get dueDate {
    _$dueDateAtom.context.enforceReadPolicy(_$dueDateAtom);
    _$dueDateAtom.reportObserved();
    return super.dueDate;
  }

  @override
  set dueDate(FieldState<DateTime> value) {
    _$dueDateAtom.context.conditionallyRunInAction(() {
      super.dueDate = value;
      _$dueDateAtom.reportChanged();
    }, _$dueDateAtom, name: '${_$dueDateAtom.name}_set');
  }

  final _$emailsAtom = Atom(name: '_PayrollStore.emails');

  @override
  FieldState<ObservableList<String>> get emails {
    _$emailsAtom.context.enforceReadPolicy(_$emailsAtom);
    _$emailsAtom.reportObserved();
    return super.emails;
  }

  @override
  set emails(FieldState<ObservableList<String>> value) {
    _$emailsAtom.context.conditionallyRunInAction(() {
      super.emails = value;
      _$emailsAtom.reportChanged();
    }, _$emailsAtom, name: '${_$emailsAtom.name}_set');
  }
}
