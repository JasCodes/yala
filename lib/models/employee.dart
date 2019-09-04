import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'employee.g.dart';

// The store-class
@store
abstract class _Employee {
  String id;
  String name;
  double salary;
  CurrencyCode currencyCode;
}
