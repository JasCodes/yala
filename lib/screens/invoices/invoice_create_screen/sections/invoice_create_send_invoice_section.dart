import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/invoice.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/invoices/invoice_create_screen/store/invoice_create_store.dart';
import 'package:yala/static/formater.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class InvoiceCreateSendInvoiceSection extends StatelessWidget {
  static const RADIUS = 2.7;
  final int index;

  const InvoiceCreateSendInvoiceSection({
    Key key,
    @required this.index,
  }) : super(key: key);

  Widget _buildDesc(desc) {
    if (desc != null || desc == '')
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 25.3),
          Container(
            color: Style.greyColor,
            height: 0.3,
          ),
          SizedBox(height: 23.3),
          Text(
            "DESCRIPTION",
            style: TextStyle(
              color: Style.greyColor,
              fontSize: 10.7,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: 5.7),
          Text(
            desc,
            style: TextStyle(
              color: Style.primaryColor,
              fontSize: 48 / 3,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      );
    else
      return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    // useObserver();
    final store = Provider.of<InvoiceCreateStore>(context);
    final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);

    var client = user.clients.firstWhere(
      (client) => client.id == store.selectClientId.value,
    );
    var invoiceNumber = store.invoiceId.value;
    var dueDate = Formatter.dateFirst.format(store.dueDate.value);
    var invoiceFrom = user.name;
    var invoiceTo = client?.companyName;
    var invoiceToAdd = client?.address;
    var invoiceToEmail = client?.email;
    var desc = store.invoiceDesc.value;
    var currency = store.currency.value.toString();
    var amount = Formatter.numC.format(store.amount.value);

    return BottomPinScrollView(
      bottomMargin: 100,
      padding: EdgeInsets.symmetric(horizontal: 16.7),
      color: Style.backgroundColor,
      child: Container(
        padding: EdgeInsets.only(bottom: 25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(RADIUS),
          child: Column(
            children: <Widget>[
              SizedBox(height: 15.3),
              Container(
                // height: 414,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(RADIUS),
                ),
                child: Container(
                  margin:
                      EdgeInsets.only(top: 24, bottom: 26, left: 22, right: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "INVOICE NUMBER",
                                    style: TextStyle(
                                      color: Style.greyColor,
                                      fontSize: 10.7,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5.7),
                                  Text(
                                    invoiceNumber,
                                    style: TextStyle(
                                      color: Style.blackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "DUE DATE",
                                style: TextStyle(
                                  color: Style.greyColor,
                                  fontSize: 32 / 3,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5.7),
                              Text(
                                dueDate,
                                style: TextStyle(
                                  color: Color(0xff181818),
                                  fontSize: 48 / 3,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 15.3),
                      Text(
                        "INVOICE FROM",
                        style: TextStyle(
                          color: Style.greyColor,
                          fontSize: 10.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.7),
                      Text(
                        invoiceFrom,
                        style: TextStyle(
                          color: Style.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 15.3),
                      Text(
                        "INVOICE TO",
                        style: TextStyle(
                          color: Style.greyColor,
                          fontSize: 10.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.7),
                      Text(
                        invoiceTo,
                        style: TextStyle(
                          color: Style.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 5.7),
                      Text(
                        invoiceToAdd,
                        style: TextStyle(
                            color: Style.blackColor,
                            fontSize: 10.7,
                            fontWeight: FontWeight.w500,
                            height: 1.25),
                      ),
                      SizedBox(height: 5.7),
                      Text(
                        invoiceToEmail,
                        style: TextStyle(
                          color: Style.primaryColor,
                          fontSize: 10.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      _buildDesc(desc),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding:
                    EdgeInsets.only(top: 23, bottom: 17, left: 20, right: 23),
                decoration: new BoxDecoration(
                  color: Style.primaryColor,
                ),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "TOTAL AMOUNT DUE",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 44 / 3,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 9),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 16),
                              child: Text(
                                currency,
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 50 / 3,
                                ),
                              ),
                            ),
                            SizedBox(width: 2),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FittedBox(
                                child: Text(
                                  amount,
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomPinChild: Observer(
        builder: (_) {
          return ButtonX(
            isActive: formWizard.validList[index],
            title: 'SEND THIS INVOICE',
            onTap: () {
              // formWizard.pageController.nextPage(
              //   duration: const Duration(milliseconds: 400),
              //   curve: Curves.easeInOut,
              // );
              user.invoices.add(Invoice()
                ..invoice_id = invoiceNumber
                ..client = client
                ..currencyCode = store.currency.value
                ..amount = store.amount.value
                ..status = InvoiceStatus.Pending);
              Navigator.of(context).pop();
            },
          );
        },
      ),
    );
  }
}
