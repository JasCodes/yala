// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_create_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class InvoiceCreateStore extends _InvoiceCreateStore {
  InvoiceCreateStore() : super();

  final _$selectClientIdAtom = Atom(name: '_InvoiceCreateStore.selectClientId');

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

  final _$invoiceIdAtom = Atom(name: '_InvoiceCreateStore.invoiceId');

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

  final _$invoiceDescAtom = Atom(name: '_InvoiceCreateStore.invoiceDesc');

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

  final _$currencyAmountAtom = Atom(name: '_InvoiceCreateStore.currencyAmount');

  @override
  FieldState<CurrencyAmount> get currencyAmount {
    _$currencyAmountAtom.context.enforceReadPolicy(_$currencyAmountAtom);
    _$currencyAmountAtom.reportObserved();
    return super.currencyAmount;
  }

  @override
  set currencyAmount(FieldState<CurrencyAmount> value) {
    _$currencyAmountAtom.context.conditionallyRunInAction(() {
      super.currencyAmount = value;
      _$currencyAmountAtom.reportChanged();
    }, _$currencyAmountAtom, name: '${_$currencyAmountAtom.name}_set');
  }

  final _$dueDateAtom = Atom(name: '_InvoiceCreateStore.dueDate');

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

  final _$emailsAtom = Atom(name: '_InvoiceCreateStore.emails');

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
