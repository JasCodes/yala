import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';
import 'package:yala/models/vendor.dart';

// Include generated file
part 'transaction.g.dart';

// The store-class
@store
abstract class _Transaction {
  @observable
  Account from;
  @observable
  Vendor to;
  @observable
  DateTime dateTime;
  @observable
  double amount;
}
