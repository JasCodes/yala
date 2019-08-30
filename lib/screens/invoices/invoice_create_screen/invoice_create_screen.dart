import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/invoice.dart';

class InvoiceCreateScreen extends StatelessWidget {
  const InvoiceCreateScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<Invoice>(
      builder: (_) => Invoice(),
      child: Container(),
    );
  }
}
