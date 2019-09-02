import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/error_context.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';

// Include generated file
part 'invoice_add_client_store.g.dart';

void chk(ec, e, bool cond) {
  if (cond) {
    if (!e.errors.contains(ec)) {
      e.addError(ec);
    }
  } else {
    e.reset();
  }
}

// The store-class
@store
abstract class _InvoiceAddClientStore {
  static final Ereq = ConstraintError('Req');

  @observable
  var contactPerson = FieldState<String>(
    label: 'Contact Person',
    value: '',
    name: 'contact_person',
    validator: (x, e) {
      print('$x, $e');
    },
  );

  @observable
  var companyName = FieldState<String>(
    label: 'Company Name',
    value: '',
    name: 'company_name',
    validator: (value, e) {
      e.map({
        'REQUIRED: Company Name should not be blank': value == '',
      });
    },
    validationPolicy: ValidationPolicy.onChange,
  );

  @observable
  var companyAddress = FieldState<String>(
    label: 'Company Address',
    value: '',
    name: 'company_address',
    validationPolicy: ValidationPolicy.onChange,
    validator: (value, e) {
      e.map({
        'REQUIRED: Company Address should not be blank': value == '',
      });
    },
  );

  @observable
  var emailAddress = FieldState<String>(
    label: 'Email Address',
    value: '',
    name: 'email_address',
    validator: (value, e) {
      e.map({
        'REQUIRED: Email Address should not be blank': value == '',
        'INVALID: Format of Email Address is invalid':
            !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value),
      });
      // err.update('Required', name == '');
      // err.update('Email',
      //     !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(name));
    },
    // asyncValidator: (x, e) async {
    //   print(x);
    //   e.addErrorMessage('hi');
    // },
    validationPolicy: ValidationPolicy.onChange,
  );

  @observable
  var phoneNumber = FieldState<String>(
    label: 'Phone Number',
    value: '',
    name: 'phone_number',
    validator: (x, e) {
      print('$x, $e');
    },
  );

  @computed
  get isFormValid {
    return companyName.isValid &&
        companyAddress.isValid &&
        emailAddress.isValid;
  }
}
