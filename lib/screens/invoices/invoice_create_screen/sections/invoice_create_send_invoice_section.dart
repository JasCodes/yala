import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/invoices/invoice_create_screen/invoice_create_store.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class InvoiceCreateSendInvoiceSection extends StatelessWidget {
  final int index;

  const InvoiceCreateSendInvoiceSection({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<InvoiceCreateStore>(context);
    final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);
    return Container();
  }
}
