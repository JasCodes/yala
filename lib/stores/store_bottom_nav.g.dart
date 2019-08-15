// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_bottom_nav.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$StoreBottomNav on _StoreBottomNav, Store {
  final _$screenAtom = Atom(name: '_StoreBottomNav.screen');

  @override
  Screen get screen {
    _$screenAtom.context.enforceReadPolicy(_$screenAtom);
    _$screenAtom.reportObserved();
    return super.screen;
  }

  @override
  set screen(Screen value) {
    _$screenAtom.context.conditionallyRunInAction(() {
      super.screen = value;
      _$screenAtom.reportChanged();
    }, _$screenAtom, name: '${_$screenAtom.name}_set');
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
