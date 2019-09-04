import 'package:mobx/mobx.dart';
import 'package:yala/navigation/navigator_map.dart';

// Include generated file
part 'bottom_nav_store.g.dart';

// The store-class
@store
abstract class _BottomNavStore {
  @observable
  NavigatorX navigator = NavigatorX.accounts;

  @observable
  bool isExchange = false;
}
