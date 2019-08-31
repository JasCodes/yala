import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/screens/invoices/invoice_screen/sections/invoice_info_section.dart';
import 'package:yala/screens/invoices/invoice_screen/sections/invoice_recent_section.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/app_bar.dart';
import 'package:yala/widgets/buttons/icon_box_button.dart';
import 'package:yala/widgets/scaffolds/page_scroll.dart';

var listKey = GlobalKey<AnimatedListState>();

class InvoiceScreen extends HookWidget {
  const InvoiceScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Invoices',
      ),
      body: PageScroll(
        child: Container(
          color: Style.backgroundColor,
          child: Padding(
            padding: EdgeInsets.all(20.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Create Invoice
                IconBoxButton(
                  title: 'Create a New Invoice',
                  iconData: IconsX.invoice_add,
                  onTap: () {
                    Navigator.pushNamed(context, '/invoice/create');
                  },
                ),
                SizedBox(
                  height: 28,
                ),
                InvoiceInfoSection(),
                SizedBox(
                  height: 28,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Recently issued invoices',
                    style: TextStyle(
                      fontSize: 13.3,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InvoiceRecentSection(),
                SizedBox(height: 70),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
