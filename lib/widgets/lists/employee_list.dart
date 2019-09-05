import 'package:flutter/material.dart';
import 'package:yala/models/employee.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';

class EmployeeList extends StatelessWidget {
  final FieldState<Employee> state;
  const EmployeeList(this.state, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
