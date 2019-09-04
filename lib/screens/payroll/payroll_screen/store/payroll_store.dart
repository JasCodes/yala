import 'package:flutter/cupertino.dart';
import 'package:locales/currency_codes.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/packages/utils.dart';

// Include generated file
part 'payroll_store.g.dart';

// The store-class
@store
abstract class _PayrollStore {
  static const double BACK_FRACTION = 0.37;
  static const double FRONT_FRACTION = 0.8;

  _PayrollStore() {
    print('hi');
    backPageController.addListener(() {
      print(backPageController.page);
      frontPageController.jumpTo(
          backPageController.position.pixels / BACK_FRACTION * FRONT_FRACTION);
      // frontPageController.jumpTo(backPageController.page);
      // page = backPageController.page;
    });
  }

////
  @observable
  DateTime payDay = getLastDayOfMonth();

  @observable
  DateTime payrollMonth = getLastDayOfMonth();
  PageController backPageController =
      PageController(initialPage: 10000, viewportFraction: BACK_FRACTION);
  PageController frontPageController =
      PageController(initialPage: 10000, viewportFraction: FRONT_FRACTION);

  // @observable
  // double page = 10000;
////
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
  var amount = FieldState<String>(
    label: 'Invoice Amount',
    value: "0",
    validationPolicy: ValidationPolicy.onChange,
    validator: (value, e) {
      bool isValid = true;
      var num = double.tryParse(value);
      if (num != null) {
        if (num <= 0) {
          isValid = false;
        }
      } else {
        isValid = false;
      }
      e.map({
        "INVALID: Amount entered should be valid and positive number": !isValid,
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
  get isValidDetails {
    return invoiceId.isValid && amount.isValid && dueDate.isValid;
  }
  //
}
