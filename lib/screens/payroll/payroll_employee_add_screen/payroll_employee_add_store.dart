import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';

// Include generated file
part 'payroll_employee_add_store.g.dart';

// The store-class
@store
abstract class _PayrollEmployeeAddStore {
  @observable
  var employeeNumber = FieldState<String>(
    label: 'Employee Number',
    value: '',
    validator: (value, e) {
      e.map({
        'REQUIRED: Employee Number should not be blank': value == '',
      });
    },
    validationPolicy: ValidationPolicy.onChange,
  );

  @observable
  var employeeName = FieldState<String>(
    label: 'Employee Name',
    value: '',
    validator: (value, e) {
      e.map({
        'REQUIRED: Employee Name should not be blank': value == '',
      });
    },
    validationPolicy: ValidationPolicy.onChange,
  );

  @observable
  var employeeCurrency = FieldState<CurrencyCode>(
    label: 'Currency',
    value: CurrencyCode.aed,
  );

  @observable
  var employeeSalary = FieldState<String>(
    label: 'Employee Salary',
    value: '0.00',
    // validator: (value, e) {
    //   e.map({
    //     'IN: Employee Salary should not be blank': value >= 0,
    //   });
    // },
    // validationPolicy: ValidationPolicy.onChange,
  );

  @computed
  get isFormValid {
    return employeeNumber.isValid && employeeName.isValid;
  }
}
