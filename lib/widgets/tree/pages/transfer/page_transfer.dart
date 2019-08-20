import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';

class PageTransfer extends StatelessWidget {
  const PageTransfer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Funds Transfer',
        isTransparent: true,
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Funds Transfer'),
          onPressed: () {
            Navigator.pushNamed(context, '/transfer/international');
          },
        ),
      ),
    );
  }
}
