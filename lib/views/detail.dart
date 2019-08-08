import 'package:flutter/material.dart';

class ViewDetail extends StatelessWidget {
  const ViewDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Container(
        child: null,
        color: Color(0xcc000000),
      ),
    );
  }
}
