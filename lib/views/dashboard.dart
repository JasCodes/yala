import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';

class ViewDashbord extends StatelessWidget {
  const ViewDashbord({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarX(title: 'Dashboard'),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/detail');
          },
        ),
      ),
    );
  }
}
