// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class Vendor extends _Vendor {
  Vendor() : super();

  final _$titleAtom = Atom(name: '_Vendor.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$imagePathAtom = Atom(name: '_Vendor.imagePath');

  @override
  String get imagePath {
    _$imagePathAtom.context.enforceReadPolicy(_$imagePathAtom);
    _$imagePathAtom.reportObserved();
    return super.imagePath;
  }

  @override
  set imagePath(String value) {
    _$imagePathAtom.context.conditionallyRunInAction(() {
      super.imagePath = value;
      _$imagePathAtom.reportChanged();
    }, _$imagePathAtom, name: '${_$imagePathAtom.name}_set');
  }

  final _$beneficiariesAtom = Atom(name: '_Vendor.beneficiaries');

  @override
  ObservableList<Beneficiary> get beneficiaries {
    _$beneficiariesAtom.context.enforceReadPolicy(_$beneficiariesAtom);
    _$beneficiariesAtom.reportObserved();
    return super.beneficiaries;
  }

  @override
  set beneficiaries(ObservableList<Beneficiary> value) {
    _$beneficiariesAtom.context.conditionallyRunInAction(() {
      super.beneficiaries = value;
      _$beneficiariesAtom.reportChanged();
    }, _$beneficiariesAtom, name: '${_$beneficiariesAtom.name}_set');
  }
}
