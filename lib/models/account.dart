import 'package:mobx/mobx.dart';
import 'package:vector_math/vector_math.dart';
import 'package:yala/models/transaction.dart';

// Include generated file
part 'account.g.dart';

// The store-class
@store
abstract class _Account {
  @observable
  String type;

  @observable
  String number;

  @observable
  double balance;

  @observable
  ObservableList<Transaction> transactions;

  @computed
  ObservableList<Vector2> get summary {
    return ObservableList.of([]);
  }
}
