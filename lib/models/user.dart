import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';

// Include generated file
part 'user.g.dart';

// The store-class
@store
abstract class _User {
  @observable
  ObservableList<Account> accounts = ObservableList.of([]);

  String email;

  @action
  login() {}
}
