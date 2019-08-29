import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';

// Include generated file
part 'page_invoice_add_client_store.g.dart';

// This is the class used by rest of your codebase
class PageInvoiceAddClientStore = _PageInvoiceAddClientStore
    with _$PageInvoiceAddClientStore;

// The store-class
abstract class _PageInvoiceAddClientStore with Store {
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
    validator: (x, e) {
      print('$x, $e');
    },
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
    validator: (x, e) {
      // e.addErrorMessage('hi');
      // print('asdsfd');
      print('$x, $e');
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
