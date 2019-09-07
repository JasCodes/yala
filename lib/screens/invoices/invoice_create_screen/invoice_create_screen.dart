import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_invoice_details_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_select_client_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/sections/invoice_create_send_invoice_section.dart';
import 'package:yala/screens/invoices/invoice_create_screen/store/invoice_create_store.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class InvoiceCreateScreen extends StatelessWidget {
  static const route = '/invoice/create';

  const InvoiceCreateScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var _items = [
      FormWizardItem(
        title: 'Select Client',
        child: InvoiceCreateSelectClientSection(
          index: 0,
        ),
      ),
      FormWizardItem(
        title: 'Invoice Details',
        child: InvoiceCreateInvoiceDetailsSection(
          index: 1,
        ),
      ),
      FormWizardItem(
        title: 'Send Invoice',
        child: InvoiceCreateSendInvoiceSection(
          index: 2,
        ),
      )
    ];
    final _formWizardStore = FormWizardStore(_items.length);
    return Provider<InvoiceCreateStore>(
      builder: (_) => InvoiceCreateStore(_formWizardStore),
      child: Scaffold(
        appBar: AppBarX(
          title: 'Create a New Invoice',
        ),
        body: FormWizard(
          store: _formWizardStore,
          items: _items,
        ),
      ),
    );
  }
}
