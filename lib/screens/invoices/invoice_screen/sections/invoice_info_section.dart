import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/widgets/buttons/decorated_list_button.dart';

class InvoiceInfoSection extends StatelessWidget {
  const InvoiceInfoSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    var clientSubtitle =
        '${(user.clients.length == 0) ? 'No' : user.clients.length.toString()} Saved Clients';
    var invoiceSubtitle =
        '${(user.invoices.length == 0) ? 'No' : user.invoices.length.toString()} Invoices';
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
          subTitle: clientSubtitle,
          iconData: IconsX.invoice_clients,
        ),
        SizedBox(
          width: 13,
          height: 13,
        ),
        DecoratedListButton(
          title: 'Invoice History',
          subTitle: invoiceSubtitle,
          iconData: IconsX.invoices,
        ),
      ],
    );
  }
}
