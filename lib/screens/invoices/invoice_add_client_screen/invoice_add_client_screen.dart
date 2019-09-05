// import 'package:currency_pickers/country.dart';
// import 'package:currency_pickers/currency_picker_dropdown.dart';
// import 'package:currency_pickers/currency_pickers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:yala/models/client.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/invoices/invoice_add_client_screen/invoice_add_client_store.dart';
import 'package:yala/static/style.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/inputs/text_field_x.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';

class InvoiceAddClientScreen extends StatelessWidget {
  static const route = '/invoice/client/add';
  InvoiceAddClientScreen({
    Key key,
  }) : super(key: key);

  final store = InvoiceAddClientStore();
  // final phoneFormatter = MaskTextInputFormatter(
  //     mask: '+# (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // final selectBoxStore = Provider.of<SelectBoxStore>(context);
    return Scaffold(
      appBar: AppBarX(
        title: 'Add a New Client',
      ),
      body: BottomPinScrollView(
        bottomMargin: 100,
        padding: EdgeInsets.symmetric(horizontal: 35.5),
        color: Style.backgroundColor,
        child: Column(
          children: <Widget>[
            SizedBox(height: 29),
            Center(
              child: Text(
                'Kindly enter the client details below',
                style: TextStyle(
                  fontSize: 14.7,
                  color: Style.blackColor,
                ),
              ),
            ),
            SizedBox(height: 29),
            TextFieldX(
              store.contactPerson,
              nextFocusField: store.companyName,
              // textInputType: TextInputType,
            ),
            SizedBox(height: 24),
            TextFieldX(
              store.companyName,
              nextFocusField: store.companyAddress,
            ),
            SizedBox(height: 24),
            TextFieldX(
              store.companyAddress,
              nextFocusField: store.emailAddress,
              textInputType: TextInputType.multiline,
              minLines: 1,
              maxLines: 6,
              // Todo: Advanced newline
              textInputAction: TextInputAction.newline,
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldX(
              store.emailAddress,
              nextFocusField: store.phoneNumber,
              textInputType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 24,
            ),
            TextFieldX(
              store.phoneNumber,
              textInputType: TextInputType.phone,
              // inputFormatters: [phoneFormatter],
              // nextFocusField: store.companyAddress,
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
        bottomPinChild: Observer(
          builder: (_) => ButtonX(
            isActive: store.isFormValid,
            // isActive: formWizard.validList[index],
            title: 'add client',
            onTap: () {
              var client = Client()
                ..id = Uuid().v4()
                ..personName = store.companyName.value
                ..companyName = store.companyName.value
                ..address = store.companyAddress.value
                ..email = store.emailAddress.value
                ..phone = store.phoneNumber.value;

              user.clients.add(client);
              Navigator.pop(context, client.id);
            },
          ),
        ),
      ),
    );
  }
}

// return BottomPinScrollView(
//       bottomMargin: 100,
//       padding: EdgeInsets.symmetric(horizontal: 20.3),
//       color: Style.backgroundColor,
//       child: Container(),
//       bottomPinChild: ButtonX(
//         isActive: formWizard.validList[index],
//         title: 'continue',
//         onTap: () {
//           formWizard.pageController.nextPage(
//             duration: const Duration(milliseconds: 400),
//             curve: Curves.easeInOut,
//           );
//         },
//       ),
//     );
