// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class Invoice extends _Invoice {
  Invoice() : super();

  final _$invoice_idAtom = Atom(name: '_Invoice.invoice_id');

  @override
  String get invoice_id {
    _$invoice_idAtom.context.enforceReadPolicy(_$invoice_idAtom);
    _$invoice_idAtom.reportObserved();
    return super.invoice_id;
  }

  @override
  set invoice_id(String value) {
    _$invoice_idAtom.context.conditionallyRunInAction(() {
      super.invoice_id = value;
      _$invoice_idAtom.reportChanged();
    }, _$invoice_idAtom, name: '${_$invoice_idAtom.name}_set');
  }

  final _$clientAtom = Atom(name: '_Invoice.client');

  @override
  Client get client {
    _$clientAtom.context.enforceReadPolicy(_$clientAtom);
    _$clientAtom.reportObserved();
    return super.client;
  }

  @override
  set client(Client value) {
    _$clientAtom.context.conditionallyRunInAction(() {
      super.client = value;
      _$clientAtom.reportChanged();
    }, _$clientAtom, name: '${_$clientAtom.name}_set');
  }

  final _$descAtom = Atom(name: '_Invoice.desc');

  @override
  String get desc {
    _$descAtom.context.enforceReadPolicy(_$descAtom);
    _$descAtom.reportObserved();
    return super.desc;
  }

  @override
  set desc(String value) {
    _$descAtom.context.conditionallyRunInAction(() {
      super.desc = value;
      _$descAtom.reportChanged();
    }, _$descAtom, name: '${_$descAtom.name}_set');
  }

  final _$currencyCodeAtom = Atom(name: '_Invoice.currencyCode');

  @override
  CurrencyCode get currencyCode {
    _$currencyCodeAtom.context.enforceReadPolicy(_$currencyCodeAtom);
    _$currencyCodeAtom.reportObserved();
    return super.currencyCode;
  }

  @override
  set currencyCode(CurrencyCode value) {
    _$currencyCodeAtom.context.conditionallyRunInAction(() {
      super.currencyCode = value;
      _$currencyCodeAtom.reportChanged();
    }, _$currencyCodeAtom, name: '${_$currencyCodeAtom.name}_set');
  }

  final _$amountAtom = Atom(name: '_Invoice.amount');

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

  final _$dateAtom = Atom(name: '_Invoice.date');

  @override
  DateTime get date {
    _$dateAtom.context.enforceReadPolicy(_$dateAtom);
    _$dateAtom.reportObserved();
    return super.date;
  }

  @override
  set date(DateTime value) {
    _$dateAtom.context.conditionallyRunInAction(() {
      super.date = value;
      _$dateAtom.reportChanged();
    }, _$dateAtom, name: '${_$dateAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_Invoice.status');

  @override
  InvoiceStatus get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(InvoiceStatus value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$emailsAtom = Atom(name: '_Invoice.emails');

  @override
  ObserverList<String> get emails {
    _$emailsAtom.context.enforceReadPolicy(_$emailsAtom);
    _$emailsAtom.reportObserved();
    return super.emails;
  }

  @override
  set emails(ObserverList<String> value) {
    _$emailsAtom.context.conditionallyRunInAction(() {
      super.emails = value;
      _$emailsAtom.reportChanged();
    }, _$emailsAtom, name: '${_$emailsAtom.name}_set');
  }
}
