import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'currency.g.dart';

// The store-class
@store
abstract class _Currency {
  @observable
  CurrencyCode code;
  @observable
  double amount;
}
