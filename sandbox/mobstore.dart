import 'package:mobx/mobx.dart';

// Include generated file
part 'mobstore.g.dart';

// This is the class used by rest of your codebase
class MobStore = _MobStore with _$MobStore;

// The store-class
abstract class _MobStore with Store {
  @observable
  int count = 0;
}
