import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_observer.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/invoices/invoice_add_client_screen/invoice_add_client_screen.dart';
import 'package:yala/screens/transfer/transfer_intl/transfer_intl_store.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/buttons/button_dotted.dart';
import 'package:yala/widgets/inputs/select_box.dart';
import 'package:yala/widgets/scaffolds/bottom_pin_scroll_view.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

class TransferSelectBeneficiarySection extends HookWidget {
  const TransferSelectBeneficiarySection({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    useObserver();

    final store = Provider.of<TransferIntlStore>(context);
    final user = Provider.of<User>(context);
    final formWizard = Provider.of<FormWizardStore>(context);

    print(ModalRoute.of(context).settings);
    return BottomPinScrollView(
      bottomMargin: 100,
      padding: EdgeInsets.symmetric(horizontal: 20.3),
      color: Style.backgroundColor,
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 22.3,
            ),
            Center(
              child: Text(
                'Select a client to send invoice to',
                style: TextStyle(
                  color: Style.blackColor,
                  fontSize: 14.7,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 23.3,
            ),
            Container(
              child: SelectBox(
                state: store.selectClientId,
                // id: selectIndex.value,
                // setId: (val) => selectIndex.value = val,
                children: user.clients.map((client) {
                  return SelectBoxItem(
                    id: client.id,
                    title: client.companyName,
                    subTitle: client.address,
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 23.3,
            ),
            ButtonDotted(
              title: 'Add a New Client',
              onTap: () {
                Navigator.pushNamed(context, InvoiceAddClientScreen.route).then(
                  (val) {
                    if (val != null) {
                      store.selectClientId.value = val;
                    }
                  },
                );
              },
            ),
            SizedBox(
              height: 23.3,
            ),
          ],
        ),
      ),
      bottomPinChild: ButtonX(
        isActive: formWizard.validList[index],
        title: 'continue',
        onTap: () {
          formWizard.pageController.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
