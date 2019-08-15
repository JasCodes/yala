import 'package:mobx/mobx.dart';
import 'package:yala/widgets/layout/screen.dart';

// Include generated file
part 'store_bottom_nav.g.dart';

// This is the class used by rest of your codebase
class StoreBottomNav = _StoreBottomNav with _$StoreBottomNav;

// The store-class
abstract class _StoreBottomNav with Store {
  @observable
  Screen screen = Screen.dev;

  @observable
  bool isExchange = false;
}
