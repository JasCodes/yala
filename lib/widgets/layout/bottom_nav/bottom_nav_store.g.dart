// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_nav_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class BottomNavStore extends _BottomNavStore {
  BottomNavStore() : super();

  final _$navigatorAtom = Atom(name: '_BottomNavStore.navigator');

  @override
  NavigatorX get navigator {
    _$navigatorAtom.context.enforceReadPolicy(_$navigatorAtom);
    _$navigatorAtom.reportObserved();
    return super.navigator;
  }

  @override
  set navigator(NavigatorX value) {
    _$navigatorAtom.context.conditionallyRunInAction(() {
      super.navigator = value;
      _$navigatorAtom.reportChanged();
    }, _$navigatorAtom, name: '${_$navigatorAtom.name}_set');
  }

  final _$isExchangeAtom = Atom(name: '_BottomNavStore.isExchange');

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
