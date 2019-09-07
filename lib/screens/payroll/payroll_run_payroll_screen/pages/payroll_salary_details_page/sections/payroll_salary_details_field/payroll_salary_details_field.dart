import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yala/screens/payroll/payroll_run_payroll_screen/pages/payroll_salary_details_page/sections/payroll_salary_details_field/payroll_salary_details_item.dart';
import 'package:yala/static/formater.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/scaffolds/amount_text_controller.dart';
import 'package:yala/widgets/texts/tx.dart';

class PayrollSalaryDetailsField extends StatelessWidget {
  final PayrollSalaryDetailItem item;
  const PayrollSalaryDetailsField(this.item, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = AmountTextController();

    // var controller = MoneyMaskedTextController(
    //     decimalSeparator: '.', thousandSeparator: ',');

    return Observer(builder: (context) {
      final emp = item.employee;
      final name = emp.name;
      final sub =
          '${emp.id} / ${emp.currencyCode.toString()} ${Formatter.numC.format(emp.salary)} pm';
      controller.text = Formatter.numC.format(emp.salary);
      // controller.text = emp.salary.toString();
      return GestureDetector(
        onTap: () {
          item.selected = !item.selected;
        },
        child: Container(
          color: Colors.transparent,
          child: Row(
            children: <Widget>[
              Checkbox(
                onChanged: (_) {
                  item.selected = !item.selected;
                },
                value: item.selected,
              ),
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TxBM(14.7, name),
                    H(3.7),
                    TxGM(11.3, sub),
                  ],
                ),
              ),
              Expanded(
                flex: 8,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: TxB(
                        10,
                        emp.currencyCode.toString(),
                      ),
                    ),
                    W(5.3),
                    Container(
                      // width: 150,
                      child: TextField(
                        inputFormatters: [
                          // WhitelistingTextInputFormatter.digitsOnly,
                        ],
                        controller: controller,
                        keyboardType: TextInputType.number,
                        onChanged: (val) {
                          item.amount = double.parse(val.replaceAll(',', ''));
                        },
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: item.selected
                              ? Style.primaryColor
                              : Style.greyColor,
                          fontSize: 20.7,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 30, bottom: 2),
                          // fillColor: Colors.green,
                        ),
                      ),
                    ),
                  ],
                ),
              )
              // TxB(10, sub)
            ],
          ),
        ),
      );
    });
  }
}
