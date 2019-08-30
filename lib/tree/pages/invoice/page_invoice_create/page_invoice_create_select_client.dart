import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_observer.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/buttons/botton_x.dart';
import 'package:yala/widgets/buttons/button_dotted.dart';
import 'package:yala/widgets/inputs/select_box.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/scaffolds/page_scroll.dart';

class PageInvoiceCreateSelectClient extends HookWidget {
  const PageInvoiceCreateSelectClient({
    Key key,
    @required this.index,
  }) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    useObserver();
    final store = Provider.of<FormWizardStore>(context);
    return PageScroll(
      color: Style.backgroundColor,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.3),
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
              height: 150,
              // constraints: BoxConstraints(maxHeight: 700),
              child: SelectBox(
                children: [
                  SelectBoxItem(
                    id: '1',
                    title: 'ACME Corp LLC',
                    subTitle:
                        'Building No 8, Sheikh Zayed Road, Dubai Internet City - Dubai',
                  ),
                  SelectBoxItem(
                    id: '2',
                    title: 'Microsoft Corporation',
                    subTitle: 'Emaar Business Park, Sheikh Zayed Road - Dubai',
                  ),
                  SelectBoxItem(
                    id: '3',
                    title: 'Thynk Digital',
                    subTitle:
                        'Suite 1002, Burlington Tower, Business Bay - Dubai',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23.3,
            ),
            ButtonDotted(
              title: 'Add a New Client',
              onTap: () {
                Navigator.pushNamed(context, '/invoice/add_client');
              },
            ),
            SizedBox(
              height: 23.3,
            ),
            Expanded(child: Container()),
            ButtonX(
              isActive: store.validList[index],
              title: 'continue',
              onTap: () {
                store.pageController.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
            ),
            SizedBox(
              height: 23.3,
            ),
            Text(store.validList.toString()),
            Checkbox(
              onChanged: (val) {
                store.validList[index] = val;
              },
              value: store.validList[index],
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
