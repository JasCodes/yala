import 'package:mobx/mobx.dart';

// Include generated file
part 'test.g.dart';

// This is the class used by rest of your codebase
// class StoreX = _StoreX with _$StoreX;

// The store-class
@store
abstract class _StoreX {
  @observable
  int count;
}
