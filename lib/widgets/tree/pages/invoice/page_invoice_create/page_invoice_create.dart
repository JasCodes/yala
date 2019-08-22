import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/components/views/form_wizard/view_form_wizard.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice_create/page_invoice_create_select_client.dart';

// import 'package:yala/widgets/primitive/scrollviewx.dart';
// import 'package:animated_card/animated_card.dart';
// var gk = GlobalKey();
// var x1 = GlobalKey();

class PageInvoiceCreate extends StatelessWidget {
  const PageInvoiceCreate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Create a New Invoice',
      ),
      body: ViewFormWizard(
        children: [
          ViewFormWizardItem(
            index: 0,
            title: 'Select Client',
            isValidated: false,
            child: PageInvoiceCreateSelectClient(),
          ),
          ViewFormWizardItem(
            index: 1,
            title: 'Invoice Details',
            isValidated: false,
            child: Center(
              child: Text('Invoice Details'),
            ),
          ),
          ViewFormWizardItem(
            index: 2,
            title: 'Send Invoice',
            isValidated: false,
            child: Center(
              child: Text('Select Invoice'),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBarX(
  //       title: 'Add a New Invoice',
  //     ),
  //     body: Container(
  //       color: Style.blackColor,
  //       child: PageView(
  //         key: gk,
  //         onPageChanged: (index) {
  //           print(index);
  //           print(x1.currentContext.size);
  //           // print(x1.currentContext.findRenderObject().);
  //         },
  //         children: <Widget>[
  //           Container(
  //             key: x1,
  //             color: Colors.orange,
  //             child: Center(
  //               child: RaisedButton(
  //                 child: Text('Add Client'),
  //                 onPressed: () {
  //                   Navigator.pushNamed(context, '/invoice/add_client');
  //                 },
  //               ),
  //             ),
  //           ),
  //           Container(
  //             color: Colors.green,
  //           ),
  //           Container(
  //             color: Colors.red,
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
