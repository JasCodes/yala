// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

class User extends _User {
  User() : super();

  final _$accountsAtom = Atom(name: '_User.accounts');

  @override
  ObservableList<Account> get accounts {
    _$accountsAtom.context.enforceReadPolicy(_$accountsAtom);
    _$accountsAtom.reportObserved();
    return super.accounts;
  }

  @override
  set accounts(ObservableList<Account> value) {
    _$accountsAtom.context.conditionallyRunInAction(() {
      super.accounts = value;
      _$accountsAtom.reportChanged();
    }, _$accountsAtom, name: '${_$accountsAtom.name}_set');
  }

  final _$clientsAtom = Atom(name: '_User.clients');

  @override
  ObservableList<Client> get clients {
    _$clientsAtom.context.enforceReadPolicy(_$clientsAtom);
    _$clientsAtom.reportObserved();
    return super.clients;
  }

  @override
  set clients(ObservableList<Client> value) {
    _$clientsAtom.context.conditionallyRunInAction(() {
      super.clients = value;
      _$clientsAtom.reportChanged();
    }, _$clientsAtom, name: '${_$clientsAtom.name}_set');
  }

  final _$invoicesAtom = Atom(name: '_User.invoices');

  @override
  ObservableList<Invoice> get invoices {
    _$invoicesAtom.context.enforceReadPolicy(_$invoicesAtom);
    _$invoicesAtom.reportObserved();
    return super.invoices;
  }

  @override
  set invoices(ObservableList<Invoice> value) {
    _$invoicesAtom.context.conditionallyRunInAction(() {
      super.invoices = value;
      _$invoicesAtom.reportChanged();
    }, _$invoicesAtom, name: '${_$invoicesAtom.name}_set');
  }

  final _$_UserActionController = ActionController(name: '_User');

  @override
  dynamic login() {
    final _$actionInfo = _$_UserActionController.startAction();
    try {
      return super.login();
    } finally {
      _$_UserActionController.endAction(_$actionInfo);
    }
  }
}
