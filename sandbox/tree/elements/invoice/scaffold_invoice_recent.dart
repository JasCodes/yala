import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:locales/currency_codes.dart';
import 'package:yala/static/formater.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/boxes/box.dart';

enum InvoiceStatus {
  Pending,
  Paid,
  Overdue,
}

class ScaffoldInvoiceRecent extends StatelessWidget {
  const ScaffoldInvoiceRecent({
    Key key,
    @required this.client,
    @required this.invoice_id,
    @required this.currencyCode,
    @required this.amount,
    @required this.status,
  }) : super(key: key);

  final String client;
  final String invoice_id;
  final CurrencyCode currencyCode;
  final double amount;
  final InvoiceStatus status;

  @override
  Widget build(BuildContext context) {
    Color _color;
    switch (status) {
      case InvoiceStatus.Paid:
        _color = Color(0xff9fd055);
        break;
      case InvoiceStatus.Pending:
        _color = Color(0xfffbc415);
        break;
      case InvoiceStatus.Overdue:
        _color = Color(0xfffb7415);
        break;
    }

    return Column(
      children: <Widget>[
        BoxWhite(
          child: Container(
            margin: EdgeInsets.only(
              left: 16.7,
              right: 9.7,
              top: 8.7,
              bottom: 9.3,
            ),
            child: Row(
              children: <Widget>[
                // Company - Invoice Number
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        client,
                        style: TextStyle(
                          fontSize: 15.3,
                          color: Style.blackColor,
                        ),
                      ),
                      Text(
                        'Invoice #${invoice_id}',
                        style: TextStyle(
                          fontSize: 10.7,
                          color: Style.greyColor,
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        top: 1.75,
                        right: 2,
                      ),
                      child: Text(
                        currencyCode.toString(),
                        style: TextStyle(
                          fontSize: 9.3,
                          color: Style.blackColor,
                        ),
                      ),
                    ),
                    Text(
                      Formatter.numC.format(amount),
                      style: TextStyle(
                        fontSize: 15.3,
                        color: Style.blackColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.3,
                ),
                Container(
                  width: 66,
                  decoration: new BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.8,
                      right: 10.8,
                      top: 9,
                      bottom: 7.3,
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Status',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 10,
                          ),
                        ),
                        Text(
                          EnumToString.parse(status),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
