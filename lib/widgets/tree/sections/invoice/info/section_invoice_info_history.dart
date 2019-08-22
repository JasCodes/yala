import 'package:flutter/material.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/widgets/tree/elements/invoice/scaffold_invoice_info.dart';

class SectionInvoiceInfoHistory extends StatelessWidget {
  const SectionInvoiceInfoHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldInvoiceInfo(
      title: 'Invoice History',
      subTitle: '26 Invoices',
      iconData: IconsX.invoices,
    );
  }
}
