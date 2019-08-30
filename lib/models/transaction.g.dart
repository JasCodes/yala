// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class Transaction extends _Transaction {
  Transaction() : super();

  final _$fromAtom = Atom(name: '_Transaction.from');

  @override
  Account get from {
    _$fromAtom.context.enforceReadPolicy(_$fromAtom);
    _$fromAtom.reportObserved();
    return super.from;
  }

  @override
  set from(Account value) {
    _$fromAtom.context.conditionallyRunInAction(() {
      super.from = value;
      _$fromAtom.reportChanged();
    }, _$fromAtom, name: '${_$fromAtom.name}_set');
  }

  final _$toAtom = Atom(name: '_Transaction.to');

  @override
  Account get to {
    _$toAtom.context.enforceReadPolicy(_$toAtom);
    _$toAtom.reportObserved();
    return super.to;
  }

  @override
  set to(Account value) {
    _$toAtom.context.conditionallyRunInAction(() {
      super.to = value;
      _$toAtom.reportChanged();
    }, _$toAtom, name: '${_$toAtom.name}_set');
  }

  final _$dateTimeAtom = Atom(name: '_Transaction.dateTime');

  @override
  DateTime get dateTime {
    _$dateTimeAtom.context.enforceReadPolicy(_$dateTimeAtom);
    _$dateTimeAtom.reportObserved();
    return super.dateTime;
  }

  @override
  set dateTime(DateTime value) {
    _$dateTimeAtom.context.conditionallyRunInAction(() {
      super.dateTime = value;
      _$dateTimeAtom.reportChanged();
    }, _$dateTimeAtom, name: '${_$dateTimeAtom.name}_set');
  }
}
