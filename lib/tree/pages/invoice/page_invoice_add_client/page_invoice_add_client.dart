import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/inputs/text_field_x.dart';
import 'package:yala/widgets/scaffolds/page_scroll.dart';
import 'package:yala/tree/pages/invoice/page_invoice_add_client/page_invoice_add_client_store.dart';

class X extends ScrollPhysics {
  @override
  Tolerance get tolerance => Tolerance(
        velocity: 1000,
      );
}

class PageInvoiceAddClient extends StatelessWidget {
  PageInvoiceAddClient({
    Key key,
  }) : super(key: key);

  final store = PageInvoiceAddClientStore();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return false;
      },
      child: Scaffold(
        appBar: AppBarX(
          title: 'Add a New Client',
        ),
        body: PageScroll(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 35.5),
            color: Style.backgroundColor,
            child: Column(
              children: <Widget>[
                SizedBox(height: 29),
                Center(
                  child: Text(
                    'Kindly enter the client details below',
                    style: TextStyle(
                      fontSize: 14.7,
                      color: Style.blackColor,
                    ),
                  ),
                ),
                SizedBox(height: 29),
                TextFieldX(
                  store.contactPerson,
                  nextFocusField: store.companyName,
                  // textInputType: TextInputType,
                ),
                SizedBox(height: 24),
                TextFieldX(
                  store.companyName,
                  nextFocusField: store.companyAddress,
                ),
                SizedBox(height: 24),
                TextFieldX(
                  store.companyAddress,
                  nextFocusField: store.emailAddress,
                  textInputType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 6,
                  // Todo: Advanced newline
                  textInputAction: TextInputAction.newline,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldX(
                  store.emailAddress,
                  nextFocusField: store.phoneNumber,
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldX(
                  store.phoneNumber,
                  textInputType: TextInputType.phone,

                  // nextFocusField: store.companyAddress,
                ),
                SizedBox(
                  height: 80,
                ),
                ButtonX(),
                // TextFieldX(),
                SizedBox(
                  height: 120,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
