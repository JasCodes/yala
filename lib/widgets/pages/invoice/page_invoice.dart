import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/ui/sections/invoice/info/section_invoice_info.dart';
import 'package:yala/widgets/ui/sections/invoice/section_invoice_create.dart';
import 'package:yala/widgets/ui/sections/invoice/section_invoice_recent.dart';

var listKey = GlobalKey<AnimatedListState>();

class PageInvoice extends HookWidget {
  const PageInvoice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Invoices',
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              color: Style.backgroundColor,
              child: Padding(
                padding: EdgeInsets.all(20.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Create Invoice
                    SectionInvoiceCreate(),
                    SizedBox(
                      height: 28,
                    ),
                    SectionInvoiceInfo(),
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
                    SectionInvoiceRecent(),
                    SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
