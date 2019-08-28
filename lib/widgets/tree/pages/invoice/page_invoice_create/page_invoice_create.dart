import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice_create/page_invoice_create_invoice_details.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice_create/page_invoice_create_select_client.dart';
import 'package:yala/widgets/tree/pages/invoice/page_invoice_create/page_invoice_create_send_invoice.dart';

// import 'package:yala/widgets/primitive/scrollviewx.dart';
// import 'package:animated_card/animated_card.dart';
// var gk = GlobalKey();
// var x1 = GlobalKey();

class PageInvoiceCreate extends StatelessWidget {
  const PageInvoiceCreate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _items = () sync* {
      int i = 0;
      yield FormWizardItem(
        title: 'Select Client',
        child: PageInvoiceCreateSelectClient(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Invoice Details',
        child: PageInvoiceCreateInvoiceDetails(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Send Invoice',
        child: PageInvoiceCreateSendInvoice(
          index: i++,
        ),
      );
    }()
        .toList();
    return Scaffold(
      appBar: AppBarX(
        title: 'Create a New Invoice',
      ),
      body: FormWizard(
        items: _items,
        // items: [
        //   // FormWizardItem(
        //   //   title: 'Select Client',
        //   //   child: PageInvoiceCreateSelectClient(
        //   //     index: 0,
        //   //   ),
        //   // ),
        //   FormWizardItem(
        //     title: 'Invoice Details',
        //     child: PageInvoiceCreateInvoiceDetails(
        //       index: 0,
        //     ),
        //   ),
        //   FormWizardItem(
        //     title: 'Send Invoice',
        //     child: PageInvoiceCreateSendInvoice(
        //       index: 1,
        //     ),
        //   ),
        // ],
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
