import 'package:flutter/material.dart';
import 'package:yala/app_bar.dart';

class PageTransferInternational extends StatelessWidget {
  const PageTransferInternational({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Intl. Transfers',
      ),
    );
  }
}
