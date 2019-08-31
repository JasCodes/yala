import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:uuid/uuid.dart';
import 'package:yala/models/account.dart';
import 'package:yala/models/beneficiary.dart';
import 'package:yala/models/client.dart';
import 'package:yala/models/invoice.dart';
import 'package:yala/models/transaction.dart';
import 'package:yala/models/user.dart';
import 'package:yala/models/vendor.dart';

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
    ..id = Uuid().v4()
    ..companyName = 'ACME Corp LLC'
    ..address = 'Building No 8, Sheikh Zayed Road, Dubai Internet City - Dubai';

  var clientMicrosoft = Client()
    ..id = Uuid().v4()
    ..companyName = 'Microsoft Corporation'
    ..address = 'Suite 1002, Burlington Tower, Business Bay - Dubai';

  var clientTD = Client()
    ..id = Uuid().v4()
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

  //Vendors
  var du_bene = Beneficiary()
    ..title = 'Office Phone'
    ..id = '055 8675912';
  var du_bene2 = Beneficiary()
    ..title = 'Internet'
    ..id = '055 8684998';
  var du_bene3 = Beneficiary()
    ..title = 'Rick\'s Phone'
    ..id = '055 8415906';

  var dewa = Vendor()
    ..title = 'Dewa'
    ..imagePath = "assets/images/logos/dewa.png";

  var sewa = Vendor()
    ..title = 'Sewa'
    ..imagePath = "assets/images/logos/sewa.png";

  var etisalat = Vendor()
    ..title = 'Etisalat'
    ..imagePath = "assets/images/logos/etisalat.png"
    ..beneficiaries.add(du_bene2)
    ..beneficiaries.add(du_bene3);

  var du = Vendor()
    ..title = 'Du'
    ..imagePath = "assets/images/logos/dewa.png"
    ..beneficiaries.add(du_bene)
    ..beneficiaries.add(du_bene2)
    ..beneficiaries.add(du_bene3);

  var salik = Vendor()
    ..title = 'Dewa'
    ..imagePath = "assets/images/logos/salik.png"
    ..beneficiaries.add(du_bene)
    ..beneficiaries.add(du_bene3);

  var nol = Vendor()
    ..title = 'Nol'
    ..imagePath = "assets/images/logos/nol.png";

  user.vendors
    ..add(dewa)
    ..add(sewa)
    ..add(etisalat)
    ..add(du)
    ..add(salik)
    ..add(nol);
  //
  //Transactions
  var t1 = Transaction()
    ..from = cAccount
    ..to = salik
    ..dateTime = DateTime(2019, 09, 05)
    ..amount = 210;

  var t2 = Transaction()
    ..from = cAccount
    ..to = du
    ..dateTime = DateTime(2019, 09, 06)
    ..amount = 210;

  var t3 = Transaction()
    ..from = cAccount
    ..to = etisalat
    ..dateTime = DateTime(2019, 09, 07)
    ..amount = 210;
  user.transactions..add(t1)..add(t2)..add(t3);
  //
  return user;
}
