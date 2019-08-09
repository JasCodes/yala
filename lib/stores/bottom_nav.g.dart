// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$StoreBottomNav on _StoreBottomNav, Store {
  final _$idAtom = Atom(name: '_StoreBottomNav.id');

  @override
  EBottomNav get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(EBottomNav value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$isExchangeAtom = Atom(name: '_StoreBottomNav.isExchange');

  @override
  bool get isExchange {
    _$isExchangeAtom.context.enforceReadPolicy(_$isExchangeAtom);
    _$isExchangeAtom.reportObserved();
    return super.isExchange;
  }

  @override
  set isExchange(bool value) {
    _$isExchangeAtom.context.conditionallyRunInAction(() {
      super.isExchange = value;
      _$isExchangeAtom.reportChanged();
    }, _$isExchangeAtom, name: '${_$isExchangeAtom.name}_set');
  }
}
