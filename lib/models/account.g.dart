// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class Account extends _Account {
  Account() : super();

  final _$typeAtom = Atom(name: '_Account.type');

  @override
  String get type {
    _$typeAtom.context.enforceReadPolicy(_$typeAtom);
    _$typeAtom.reportObserved();
    return super.type;
  }

  @override
  set type(String value) {
    _$typeAtom.context.conditionallyRunInAction(() {
      super.type = value;
      _$typeAtom.reportChanged();
    }, _$typeAtom, name: '${_$typeAtom.name}_set');
  }

  final _$numberAtom = Atom(name: '_Account.number');

  @override
  String get number {
    _$numberAtom.context.enforceReadPolicy(_$numberAtom);
    _$numberAtom.reportObserved();
    return super.number;
  }

  @override
  set number(String value) {
    _$numberAtom.context.conditionallyRunInAction(() {
      super.number = value;
      _$numberAtom.reportChanged();
    }, _$numberAtom, name: '${_$numberAtom.name}_set');
  }

  final _$currencyCodeAtom = Atom(name: '_Account.currencyCode');

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

  final _$balancesAtom = Atom(name: '_Account.balances');

  @override
  ObservableList<double> get balances {
    _$balancesAtom.context.enforceReadPolicy(_$balancesAtom);
    _$balancesAtom.reportObserved();
    return super.balances;
  }

  @override
  set balances(ObservableList<double> value) {
    _$balancesAtom.context.conditionallyRunInAction(() {
      super.balances = value;
      _$balancesAtom.reportChanged();
    }, _$balancesAtom, name: '${_$balancesAtom.name}_set');
  }
}
