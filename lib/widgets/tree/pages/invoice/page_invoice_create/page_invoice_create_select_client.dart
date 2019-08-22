import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class PageInvoiceCreateSelectClient extends StatelessWidget {
  const PageInvoiceCreateSelectClient({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.backgroundColor,
      child: Center(
        child: RaisedButton(
          child: Text('Add Client'),
          onPressed: () {
            Navigator.pushNamed(context, '/invoice/add_client');
          },
        ),
      ),
    );
  }
}
