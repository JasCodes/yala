// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_noti.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreTextNoti on _StoreTextNoti, Store {
  final _$titlesAtom = Atom(name: '_StoreTextNoti.titles');

  @override
  ObservableList<String> get titles {
    _$titlesAtom.context.enforceReadPolicy(_$titlesAtom);
    _$titlesAtom.reportObserved();
    return super.titles;
  }

  @override
  set titles(ObservableList<String> value) {
    _$titlesAtom.context.conditionallyRunInAction(() {
      super.titles = value;
      _$titlesAtom.reportChanged();
    }, _$titlesAtom, name: '${_$titlesAtom.name}_set');
  }
}
