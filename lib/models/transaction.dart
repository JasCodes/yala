import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';
// import 'package:yala/models/currency.dart';

// Include generated file
part 'transaction.g.dart';

// The store-class
@store
abstract class _Transaction {
  @observable
  Account from;
  @observable
  Account to;
  // @observable
  // Currency amount;
  @observable
  DateTime dateTime;
}
