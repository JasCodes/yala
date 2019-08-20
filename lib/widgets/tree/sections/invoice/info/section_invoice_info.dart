import 'package:flutter/material.dart';
import 'package:yala/widgets/tree/sections/invoice/info/section_invoice_info_clients.dart';
import 'package:yala/widgets/tree/sections/invoice/info/section_invoice_info_history.dart';

class SectionInvoiceInfo extends StatelessWidget {
  const SectionInvoiceInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Axis direction;
    MainAxisSize axisSize;

    if (MediaQuery.of(context).size.width > 370) {
      direction = Axis.horizontal;
      axisSize = MainAxisSize.max;
    } else {
      direction = Axis.vertical;
      axisSize = MainAxisSize.min;
    }
    return Flex(
      direction: direction,
      mainAxisSize: axisSize,
      children: <Widget>[
        SectionInvoiceInfoClients(),
        SizedBox(
          width: 13,
          height: 13,
        ),
        SectionInvoiceInfoHistory(),
      ],
    );
  }
}
