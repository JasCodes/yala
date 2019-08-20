import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';

class PagePayroll extends StatelessWidget {
  const PagePayroll({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Run a New Payroll',
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('Add a new Emp'),
            onPressed: () {
              Navigator.pushNamed(context, '/payroll/add');
            },
          ),
        ),
      ),
    );
  }
}
