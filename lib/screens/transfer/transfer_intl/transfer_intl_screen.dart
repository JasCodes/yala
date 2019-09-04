import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/screens/invoices/invoice_create_screen/invoice_create_store.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_invoice_details_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_select_client_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_send_invoice_section.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard.dart';

class TransferIntlScreen extends StatelessWidget {
  static const route = '/transfer/intl';

  const TransferIntlScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _items = () sync* {
      int i = 0;
      yield FormWizardItem(
        title: 'Select\nBeneficiary',
        child: InvoiceCreateSelectClientSection(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Transfer\nDetails',
        child: InvoiceCreateInvoiceDetailsSection(
          index: i++,
        ),
      );
      yield FormWizardItem(
        title: 'Confirm\nTransfer',
        child: InvoiceCreateSendInvoiceSection(
          index: i++,
        ),
      );
    }()
        .toList();
    return Provider<InvoiceCreateStore>(
      builder: (_) => InvoiceCreateStore(),
      child: Scaffold(
        appBar: AppBarX(
          title: 'Intl. Transfers',
        ),
        body: FormWizard(
          items: _items,
        ),
      ),
    );
  }
}
