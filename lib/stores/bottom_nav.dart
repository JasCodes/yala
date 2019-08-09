import 'package:mobx/mobx.dart';

// Include generated file
part 'bottom_nav.g.dart';

// This is the class used by rest of your codebase
class StoreBottomNav = _StoreBottomNav with _$StoreBottomNav;

enum EBottomNav {
  accounts,
  invoices,
  payroll,
  more,
  transfer,
  billpayment,
  request
}

// The store-class
abstract class _StoreBottomNav with Store {
  @observable
  EBottomNav id = EBottomNav.accounts;

  @observable
  bool isExchange = false;

  // @observable
  // Animation
  // @action
  // void updateIndex(int val) {
  //   index = val;
  // }
}
