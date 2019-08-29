import 'package:mobx/mobx.dart';
import 'package:yala/layout/navigator_map.dart';

// Include generated file
part 'bottom_nav_store.g.dart';

// The store-class
@store
abstract class _BottomNavStore {
  @observable
  NavigatorX navigator = NavigatorX.dev;

  @observable
  bool isExchange = false;
}
