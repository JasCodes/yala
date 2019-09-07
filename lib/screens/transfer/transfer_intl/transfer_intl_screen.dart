import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_invoice_details_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_select_client_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_send_invoice_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/store/invoice_create_store.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class TransferIntlScreen extends StatelessWidget {
  static const route = '/transfer/intl';

  const TransferIntlScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _items = [
      FormWizardItem(
        title: 'Select\nBeneficiary',
        child: InvoiceCreateSelectClientSection(
          index: 0,
        ),
      ),
      FormWizardItem(
        title: 'Transfer\nDetails',
        child: InvoiceCreateInvoiceDetailsSection(
          index: 1,
        ),
      ),
      FormWizardItem(
        title: 'Confirm\nTransfer',
        child: InvoiceCreateSendInvoiceSection(
          index: 2,
        ),
      ),
    ];

    final _formWizardStore = FormWizardStore(_items.length);
    return Provider<InvoiceCreateStore>(
      builder: (_) => InvoiceCreateStore(_formWizardStore),
      child: Scaffold(
        appBar: AppBarX(
          title: 'Intl. Transfers',
        ),
        body: FormWizard(
          store: _formWizardStore,
          items: _items,
        ),
      ),
    );
  }
}
