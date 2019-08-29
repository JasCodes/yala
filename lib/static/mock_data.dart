import 'package:yala/models/account.dart';
import 'package:yala/models/user.dart';

User MockData() {
  var user = User();
  var accounts = user.accounts;
  Account cAccount = Account()
    ..type = 'Current Account'
    ..number = '5004844755214248';

  var iAccount = Account()
    ..type = 'Investment Account'
    ..number = '5001844655214259';

  accounts.add(cAccount);
  accounts.add(iAccount);

  return user;
}
