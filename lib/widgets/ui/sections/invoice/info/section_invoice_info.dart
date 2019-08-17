import 'package:flutter/material.dart';
import 'package:yala/widgets/ui/sections/invoice/info/section_invoice_info_clients.dart';
import 'package:yala/widgets/ui/sections/invoice/info/section_invoice_info_history.dart';

class SectionInvoiceInfo extends StatelessWidget {
  const SectionInvoiceInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SectionInvoiceInfoClients(),
        SizedBox(
          width: 13,
        ),
        SectionInvoiceInfoHistory(),
      ],
    );
  }
}
