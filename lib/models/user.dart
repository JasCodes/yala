import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';
import 'package:yala/models/client.dart';
import 'package:yala/models/invoice.dart';

// Include generated file
part 'user.g.dart';

// The store-class
@store
abstract class _User {

  @observable
  ObservableList<Account> accounts = ObservableList.of([]);

  @observable
  ObservableList<Client> clients = ObservableList.of([]);

  @observable
  ObservableList<Invoice> invoices = ObservableList.of([]);

  String email;

  @action
  login() {}
}
