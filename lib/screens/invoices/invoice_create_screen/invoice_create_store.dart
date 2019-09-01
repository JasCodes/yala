import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';

// Include generated file
part 'invoice_create_store.g.dart';

class CurrencyAmount {
  CurrencyCode currency;
  double amount;
}

// The store-class
@store
abstract class _InvoiceCreateStore {
  @observable
  var selectClientId = FieldState<String>();
  @observable
  var invoiceId = FieldState<String>();
  @observable
  var invoiceDesc = FieldState<String>();
  @observable
  var currencyAmount = FieldState<CurrencyAmount>();
  @observable
  var dueDate = FieldState<DateTime>();
  @observable
  var emails = FieldState<ObservableList<String>>();
}
