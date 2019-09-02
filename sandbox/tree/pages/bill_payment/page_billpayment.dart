import 'package:flutter/material.dart';
import 'package:yala/app_bar.dart';

class PageBillPayment extends StatelessWidget {
  const PageBillPayment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Bill Payments',
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('Pay'),
            onPressed: () {
              Navigator.pushNamed(context, '/billpayment/pay');
            },
          ),
        ),
      ),
    );
  }
}
