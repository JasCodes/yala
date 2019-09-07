import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

// Include generated file
part 'invoice_create_store.g.dart';

// The store-class
@store
abstract class _InvoiceCreateStore {
  _InvoiceCreateStore(FormWizardStore formWizardStore) {
    autorun((_) {
      formWizardStore.validList[0] = true;
      formWizardStore.validList[1] = isInvoiceDetailsValid;
      formWizardStore.validList[2] = true;
    });
  }
  // Select Client
  @observable
  var selectClientId = FieldState<String>();
  //

  // Invoice Details
  @observable
  var invoiceId = FieldState<String>(
    label: 'Purchase Order Number',
    value: "",
    validationPolicy: ValidationPolicy.onChange,
    validator: (value, e) {
      e.map({
        'REQUIRED: Company Name should not be blank': value == '',
      });
    },
  );

  @observable
  var invoiceDesc = FieldState<String>(
    label: 'Description',
  );

  @observable
  var currency = FieldState<CurrencyCode>(
    label: 'Currency',
  );

  @observable
  var amount = FieldState<double>(
    label: 'Invoice Amount',
    value: 0,
    validationPolicy: ValidationPolicy.onChange,
    validator: (value, e) {
      bool isValid = value > 0;
      // bool isValid = true;
      // print(value);
      // var num = double.tryParse(value);
      // print(num);
      // if (num != null) {
      //   if (num <= 0) {
      //     isValid = false;
      //   }
      // } else {
      //   isValid = false;
      // }
      e.map({
        "INVALID: Amount can't be zero": !isValid,
      });
    },
  );

  @observable
  var dueDate = FieldState<DateTime>(
    label: 'Invoice Due Date',
    value: DateTime.now(),
    validationPolicy: ValidationPolicy.onChange,
    validator: (value, e) {
      bool isValid = false;
      if (value.year >= DateTime.now().year) {
        if (value.month >= DateTime.now().month) {
          if (value.day >= DateTime.now().day) {
            isValid = true;
          }
        }
      }

      e.map({
        "INVALID: Invoice issue date can't be in past": !isValid,
      });
    },
  );

  @observable
  var emails = FieldState<ObservableList<String>>();

  @computed
  get isInvoiceDetailsValid {
    return invoiceId.isValid && amount.isValid && dueDate.isValid;
  }
  //
}
