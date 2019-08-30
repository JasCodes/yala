import 'package:flutter/material.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/widgets/buttons/decorated_list_button.dart';

class InvoiceInfoSection extends StatelessWidget {
  const InvoiceInfoSection({Key key}) : super(key: key);

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
        DecoratedListButton(
          title: 'My Clients',
          subTitle: '5 Saved Clients',
          iconData: IconsX.invoice_clients,
        ),
        SizedBox(
          width: 13,
          height: 13,
        ),
        DecoratedListButton(
          title: 'Invoice History',
          subTitle: '26 Invoices',
          iconData: IconsX.invoices,
        ),
      ],
    );
  }
}
