import 'package:mobx/mobx.dart';

// Include generated file
part 'ui.g.dart';

// This is the class used by rest of your codebase
class UIStore = _UIStore with _$UIStore;

// The store-class
abstract class _UIStore with Store {
  @observable
  int showBottomSheetX = 0;
}
