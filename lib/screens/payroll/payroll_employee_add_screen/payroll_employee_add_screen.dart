import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:locales/currency_codes.dart';
import 'package:provider/provider.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/models/employee.dart';
import 'package:yala/models/user.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/screens/payroll/payroll_employee_add_screen/payroll_employee_add_store.dart';
import 'package:yala/screens/payroll/payroll_screen/pages/payroll_salary_details_page/sections/payroll_salary_details_field/payroll_salary_details_item.dart';
import 'package:yala/screens/payroll/payroll_screen/store/payroll_store.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/inputs/currency_amount_field.dart';
import 'package:yala/widgets/inputs/text_field_x.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';

class PayrollEmployeeAddScreen extends StatelessWidget {
  static const route = '/payroll/employee/add';

  const PayrollEmployeeAddScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = PayrollEmployeeAddStore();
    final user = Provider.of<User>(context);

    // final payrollStore = Provider.of<PayrollStore>(context);
    // final selectBoxStore = Provider.of<SelectBoxStore>(context);
    return Scaffold(
      appBar: AppBarX(
        title: 'Add a New Employee',
      ),
      body: BottomPinScrollView(
        bottomMargin: 100,
        padding: EdgeInsets.symmetric(horizontal: 35.5),
        color: Style.backgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: 29),
            Center(
              child: Text(
                'Kindly enter the employee details below',
                style: TextStyle(
                  fontSize: 14.7,
                  color: Style.blackColor,
                ),
              ),
            ),
            SizedBox(height: 29),
            TextFieldX(
              store.employeeNumber,
              nextFocusField: store.employeeName,
              // textInputType: TextInputType,
            ),
            SizedBox(height: 24),
            TextFieldX(
              store.employeeName,
              nextFocusField: store.employeeSalary,
            ),
            SizedBox(height: 24),
            CurrencyAmountField(
              amountState: store.employeeSalary,
              currencyState: store.employeeCurrency,
            ),
            SizedBox(height: 24),
          ],
        ),
        bottomPinChild: Observer(
          builder: (_) => ButtonX(
            isActive: store.isFormValid,
            // isActive: formWizard.validList[index],
            title: 'add employee',
            onTap: () {
              var emp = Employee()
                ..id = store.employeeNumber.value
                ..name = store.employeeName.value
                ..currencyCode = store.employeeCurrency.value
                ..salary = double.parse(
                    store.employeeSalary.value.replaceAll(',', ''));
              user.employees.add(emp);

              //add to form
              // var salaryDetailItem = PayrollSalaryDetailItem()
              //   ..selected = true
              //   ..employee = emp
              //   ..amount = emp.salary;
              // payrollStore.salaryDetialItems.add(salaryDetailItem);
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
