import 'package:flutter/foundation.dart';
import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/models/client.dart';

// Include generated file
part 'invoice.g.dart';

// The store-class

enum InvoiceStatus {
  Pending,
  Paid,
  Overdue,
}

@store
abstract class _Invoice {
  @observable
  String invoice_id;

  @observable
  Client client;

  @observable
  String desc;

  @observable
  CurrencyCode currencyCode;

  @observable
  double amount;

  @observable
  DateTime date;

  @observable
  InvoiceStatus status = InvoiceStatus.Pending;

  @observable
  ObserverList<String> emails;
}
