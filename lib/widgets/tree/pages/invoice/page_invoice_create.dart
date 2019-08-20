import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/app_bar.dart';

// import 'package:yala/widgets/primitive/scrollviewx.dart';
// import 'package:animated_card/animated_card.dart';
var gk = GlobalKey();
var x1 = GlobalKey();

class PageInvoiceCreate extends StatelessWidget {
  const PageInvoiceCreate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Add a New Invoice',
      ),
      body: Container(
        color: Style.blackColor,
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
              child: Center(
                child: RaisedButton(
                  child: Text('Add Client'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/invoice/add_client');
                  },
                ),
              ),
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
