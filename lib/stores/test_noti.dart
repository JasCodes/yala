import 'package:mobx/mobx.dart';

// Include generated file
part 'test_noti.g.dart';

// This is the class used by rest of your codebase
class StoreTextNoti = _StoreTextNoti with _$StoreTextNoti;

// The store-class
abstract class _StoreTextNoti with Store {
  @observable
  List<String> titles = ['Apple', 'Banana', 'Cherry'];
}
