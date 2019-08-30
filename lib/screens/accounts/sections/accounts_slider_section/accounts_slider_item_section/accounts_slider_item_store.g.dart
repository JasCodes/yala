// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accounts_slider_item_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class AccountsSliderItemStore extends _AccountsSliderItemStore {
  AccountsSliderItemStore() : super();

  final _$knobIndexAtom = Atom(name: '_AccountsSliderItemStore.knobIndex');

  @override
  int get knobIndex {
    _$knobIndexAtom.context.enforceReadPolicy(_$knobIndexAtom);
    _$knobIndexAtom.reportObserved();
    return super.knobIndex;
  }

  @override
  set knobIndex(int value) {
    _$knobIndexAtom.context.conditionallyRunInAction(() {
      super.knobIndex = value;
      _$knobIndexAtom.reportChanged();
    }, _$knobIndexAtom, name: '${_$knobIndexAtom.name}_set');
  }
}
