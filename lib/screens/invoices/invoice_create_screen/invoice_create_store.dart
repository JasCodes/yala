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
  var invoiceId = FieldState<String>(
    label: 'Purchase Order Number',
  );
  @observable
  var invoiceDesc = FieldState<String>(
    label: 'Description',
  );
  @observable
  var currencyAmount = FieldState<CurrencyAmount>(
    label: 'Invoice Amount',
  );
  @observable
  var dueDate = FieldState<DateTime>(label: 'Invoice Due Date');
  @observable
  var emails = FieldState<ObservableList<String>>();
}
