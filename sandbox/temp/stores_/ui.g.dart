// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$UIStore on _UIStore, Store {
  final _$showBottomSheetXAtom = Atom(name: '_UIStore.showBottomSheetX');

  @override
  int get showBottomSheetX {
    _$showBottomSheetXAtom.context.enforceReadPolicy(_$showBottomSheetXAtom);
    _$showBottomSheetXAtom.reportObserved();
    return super.showBottomSheetX;
  }

  @override
  set showBottomSheetX(int value) {
    _$showBottomSheetXAtom.context.conditionallyRunInAction(() {
      super.showBottomSheetX = value;
      _$showBottomSheetXAtom.reportChanged();
    }, _$showBottomSheetXAtom, name: '${_$showBottomSheetXAtom.name}_set');
  }
}
