// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_wizard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormWizardStore on _FormWizardStore, Store {
  final _$validListAtom = Atom(name: '_FormWizardStore.validList');

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

  final _$lengthStatusAtom = Atom(name: '_FormWizardStore.lengthStatus');

  @override
  ObservableList<double> get lengthStatus {
    _$lengthStatusAtom.context.enforceReadPolicy(_$lengthStatusAtom);
    _$lengthStatusAtom.reportObserved();
    return super.lengthStatus;
  }

  @override
  set lengthStatus(ObservableList<double> value) {
    _$lengthStatusAtom.context.conditionallyRunInAction(() {
      super.lengthStatus = value;
      _$lengthStatusAtom.reportChanged();
    }, _$lengthStatusAtom, name: '${_$lengthStatusAtom.name}_set');
  }

  final _$dxAtom = Atom(name: '_FormWizardStore.dx');

  @override
  ObservableList<double> get dx {
    _$dxAtom.context.enforceReadPolicy(_$dxAtom);
    _$dxAtom.reportObserved();
    return super.dx;
  }

  @override
  set dx(ObservableList<double> value) {
    _$dxAtom.context.conditionallyRunInAction(() {
      super.dx = value;
      _$dxAtom.reportChanged();
    }, _$dxAtom, name: '${_$dxAtom.name}_set');
  }
}
