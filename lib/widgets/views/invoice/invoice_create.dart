import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';

// import 'package:yala/widgets/primitive/scrollviewx.dart';
// import 'package:animated_card/animated_card.dart';
var gk = GlobalKey();
var x1 = GlobalKey();

class ViewInvoiceCreate extends StatelessWidget {
  const ViewInvoiceCreate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Create Invoice',
      ),
      body: Container(
        color: Colors.black,
        child: PageView(
          key: gk,
          onPageChanged: (index) {
            print(index);
            print(x1.currentContext.size);
            // print(x1.currentContext.findRenderObject().);
          },
          children: <Widget>[
            Container(
              key: x1,
              color: Colors.orange,
            ),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
