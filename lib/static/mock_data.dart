import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';
import 'package:yala/models/user.dart';
import 'package:yala/packages/currency_code.dart';

User MockData() {
  var user = User();
  var accounts = user.accounts;
  Account cAccount = Account()
    ..type = 'Current Account'
    ..currencyCode = CurrencyCode.aed
    ..number = '5004844755214248'
    ..balances = ObservableList.of([
      400000,
      250000,
      300000,
      200000,
      450000,
      400000,
      300000,
    ]);

  var iAccount = Account()
    ..type = 'Investment Account'
    ..currencyCode = CurrencyCode.usd
    ..number = '5001844655214259'
    ..balances = ObservableList.of([
      420000,
      400000,
      120000,
      420000,
      300000,
      400000,
      700000,
    ]);

  var sAccount = Account()
    ..type = 'Savings Account'
    ..currencyCode = CurrencyCode.usd
    ..number = '5001844655214259'
    ..balances = ObservableList.of([
      32000,
      30000,
      12000,
      42000,
      30000,
      40000,
      30000,
    ]);

  accounts.add(cAccount);
  accounts.add(iAccount);
  accounts.add(sAccount);

  return user;
}
