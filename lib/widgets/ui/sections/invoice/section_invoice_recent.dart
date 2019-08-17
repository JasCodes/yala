import 'package:flutter/material.dart';
import 'package:locales/currency_codes.dart';
import 'package:yala/widgets/ui/scaffolds/invoice/scaffold_invoice_recent.dart';

class SectionInvoiceRecent extends StatelessWidget {
  const SectionInvoiceRecent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ScaffoldInvoiceRecent(
          client: 'ACME Corp',
          currencyCode: CurrencyCode.aed,
          amount: 21350.50,
          invoice_id: '221145',
          status: InvoiceStatus.Pending,
        ),
        ScaffoldInvoiceRecent(
          client: 'Microsoft',
          currencyCode: CurrencyCode.aed,
          amount: 67220,
          invoice_id: '221145',
          status: InvoiceStatus.Overdue,
        ),
        ScaffoldInvoiceRecent(
          client: 'Thynk Digital',
          currencyCode: CurrencyCode.aed,
          amount: 117800,
          invoice_id: '221145',
          status: InvoiceStatus.Paid,
        ),
        ScaffoldInvoiceRecent(
          client: 'Emaar Properties',
          currencyCode: CurrencyCode.aed,
          amount: 33000,
          invoice_id: '221145',
          status: InvoiceStatus.Paid,
        ),
      ],
    );
  }
}
