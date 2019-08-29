import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/tree/elements/invoice/scaffold_invoice_info.dart';

class SectionInvoiceInfoClients extends HookWidget {
  const SectionInvoiceInfoClients({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldInvoiceInfo(
      title: 'My Clients',
      subTitle: '5 Saved Clients',
      iconData: IconsX.invoice_clients,
    );
  }
}
