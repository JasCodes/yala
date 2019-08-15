import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/primitive/scrollviewx.dart';

var listKey = GlobalKey<AnimatedListState>();

class ViewInvoice extends HookWidget {
  const ViewInvoice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final i = useState(5);

    return Scaffold(
      appBar: AppBarX(
        title: 'Invoices',
        // isTransparent: true,
      ),
      body: ScrollViewX(
        child: Container(
          color: Style.appBackground,
          child: Padding(
            padding: EdgeInsets.all(20.7),
            child: Column(
              children: <Widget>[
                // Create Invoice
                Container(
                  // padding: EdgeInsets.all(23.7),
                  // height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff3b6df5),
                        Color(0xff5b61f7),
                      ],
                      stops: [0, 1],
                    ),
                  ),
                  child: Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.pushNamed(context, '/invoice/create');
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(23.7),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              width: 64,
                              height: 64,
                              child: Icon(
                                AppIcons.invoice_add,
                                color: Style.appPrimaryColor,
                              ),
                            ),
                            SizedBox(
                              height: 14.7,
                            ),
                            Text(
                              'Create a New Invoice',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    'Recently issued invoices',
                    style: TextStyle(fontSize: 13.3),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    listKey.currentState.insertItem(1);
                    // i.value++;
                  },
                ),
                Expanded(
                  child: Column(
                    // padding: const EdgeInsets.all(8.0),
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        // height: 150,
                        color: Colors.amber[600],
                        child: const Center(child: Text('Entry A')),
                      ),
                      Container(
                        // height: 150,
                        color: Colors.amber[500],
                        child: const Center(child: Text('Entry B')),
                      ),
                      Container(
                        // height: 150,
                        color: Colors.amber[100],
                        child: const Center(child: Text('Entry C')),
                      ),
                      Container(
                        // height: 150,
                        color: Colors.amber[200],
                        child: const Center(child: Text('Entry D')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
