import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/models/account.dart';
import 'package:yala/models/client.dart';
import 'package:yala/models/invoice.dart';
import 'package:yala/models/user.dart';

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

  var clientAcme = Client()
    ..companyName = 'ACME Corp LLC'
    ..address = 'Building No 8, Sheikh Zayed Road, Dubai Internet City - Dubai';

  var clientMicrosoft = Client()
    ..companyName = 'Microsoft Corporation'
    ..address = 'Suite 1002, Burlington Tower, Business Bay - Dubai';

  var clientTD = Client()
    ..companyName = "ACME Corp LLC"
    ..address = 'Emaar Business Park, Sheikh Zayed Road - Dubai';

  user.clients.add(clientAcme);
  user.clients.add(clientMicrosoft);
  user.clients.add(clientTD);

  var invoice1 = Invoice()
    ..client = clientAcme
    ..currencyCode = CurrencyCode.aed
    ..amount = 21350.50
    ..invoice_id = '221145'
    ..status = InvoiceStatus.Pending;

  var invoice2 = Invoice()
    ..client = clientMicrosoft
    ..currencyCode = CurrencyCode.aed
    ..amount = 67220
    ..invoice_id = '221146'
    ..status = InvoiceStatus.Overdue;

  var invoice3 = Invoice()
    ..client = clientTD
    ..currencyCode = CurrencyCode.aed
    ..amount = 117800
    ..invoice_id = '221147'
    ..status = InvoiceStatus.Paid;

  var invoice4 = Invoice()
    ..client = clientMicrosoft
    ..currencyCode = CurrencyCode.aed
    ..amount = 33330
    ..invoice_id = '221146'
    ..status = InvoiceStatus.Overdue;

  user.invoices.add(invoice1);
  user.invoices.add(invoice2);
  user.invoices.add(invoice3);
  user.invoices.add(invoice4);

  return user;
}
