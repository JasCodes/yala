// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_form_wizard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ViewFormWizardStore on _ViewFormWizardStore, Store {
  final _$validListAtom = Atom(name: '_ViewFormWizardStore.validList');

  @override
  ObservableList<bool> get validList {
    _$validListAtom.context.enforceReadPolicy(_$validListAtom);
    _$validListAtom.reportObserved();
    return super.validList;
  }

  @override
  set validList(ObservableList<bool> value) {
    _$validListAtom.context.conditionallyRunInAction(() {
      super.validList = value;
      _$validListAtom.reportChanged();
    }, _$validListAtom, name: '${_$validListAtom.name}_set');
  }
}
