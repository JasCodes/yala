import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/invoices/invoice_create_screen/invoice_create_store.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/inputs/text_field_x.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class InvoiceCreateInvoiceDetailsSection extends StatelessWidget {
  final int index;
  const InvoiceCreateInvoiceDetailsSection({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<InvoiceCreateStore>(context);
    final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);

    return BottomPinScrollView(
      bottomMargin: 100,
      padding: EdgeInsets.symmetric(horizontal: 35.5),
      color: Style.backgroundColor,
      child: Column(
        children: <Widget>[
          SizedBox(height: 30.3),
          TextFieldX(
            store.invoiceId,
            labelColor: Style.blackColor,
            nextFocusField: store.invoiceDesc,
            // textInputType: TextInputType,
          ),
          SizedBox(height: 27.3),
          TextFieldX(
            store.invoiceDesc,

            labelColor: Style.blackColor,
            // nextFocusField: store.companyAddress,
          ),
          SizedBox(height: 27.3),
        ],
      ),
      bottomPinChild: Observer(
        builder: (_) => ButtonX(
          // isActive: store.isFormValid,
          // isActive: formWizard.validList[index],
          title: 'continue',
          // onTap: () {
          //   var client = Client()
          //     ..id = Uuid().v4()
          //     ..personName = store.companyName.value
          //     ..companyName = store.companyName.value
          //     ..address = store.companyAddress.value
          //     ..email = store.emailAddress.value
          //     ..phone = store.phoneNumber.value;

          //   user.clients.add(client);
          //   Navigator.pop(context, client.id);
          // },
        ),
      ),
    );
  }
}
