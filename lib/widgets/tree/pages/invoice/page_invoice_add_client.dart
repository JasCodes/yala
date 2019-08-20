import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';

class PageInvoiceAddClient extends StatelessWidget {
  const PageInvoiceAddClient({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Add a New Client',
      ),
      body: Container(),
    );
  }
}
