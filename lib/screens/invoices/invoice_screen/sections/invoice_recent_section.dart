import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/widgets/lists/invoice_list.dart';

class InvoiceRecentSection extends StatelessWidget {
  const InvoiceRecentSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<User>(context);
    return Column(
      children: store.invoices
          .map((invoice) => InvoiceList(
                client: invoice.client.companyName,
                currencyCode: invoice.currencyCode,
                amount: invoice.amount,
                invoice_id: invoice.invoice_id,
                status: invoice.status,
              ))
          .toList(),
    );
  }
}
