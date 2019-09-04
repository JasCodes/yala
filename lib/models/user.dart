import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';
import 'package:yala/models/client.dart';
import 'package:yala/models/employee.dart';
import 'package:yala/models/invoice.dart';
import 'package:yala/models/payroll.dart';
import 'package:yala/models/transaction.dart';
import 'package:yala/models/vendor.dart';

// Include generated file
part 'user.g.dart';

// The store-class
@store
abstract class _User {
  @observable
  String name = 'Thynk Digital';
  @observable
  ObservableList<Account> accounts = ObservableList.of([]);

  @observable
  ObservableList<Client> clients = ObservableList.of([]);

  @observable
  ObservableList<Invoice> invoices = ObservableList.of([]);

  @observable
  ObservableList<Vendor> vendors = ObservableList.of([]);

  @observable
  ObservableList<Transaction> transactions = ObservableList.of([]);

  @observable
  ObservableList<Employee> employees = ObservableList.of([]);

  @observable
  ObservableList<Payroll> payrolls = ObservableList.of([]);

  @action
  login() {}
}
