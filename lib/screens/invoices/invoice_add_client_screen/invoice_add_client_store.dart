import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';

// Include generated file
part 'invoice_add_client_store.g.dart';

// The store-class
@store
abstract class _InvoiceAddClientStore {
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
    validator: (name, err) {
      err.reset();
      if (name == '') {
        err.addErrorMessage('Required');
      }
    },
    validationPolicy: ValidationPolicy.onChange,
  );

  @observable
  var companyAddress = FieldState<String>(
    label: 'Company Address',
    value: '',
    name: 'company_address',
    validator: (x, e) {
      print('$x, $e');
    },
  );

  @observable
  var emailAddress = FieldState<String>(
    label: 'Email Address',
    value: '',
    name: 'email_address',
    validator: (name, err) {
      err.reset();
      if (name == '') {
        err.addErrorMessage('Required');
      }
      if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(name)) {
        err.addErrorMessage('Valid Email');
      }
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
}
