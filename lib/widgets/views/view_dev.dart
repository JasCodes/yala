import 'package:flutter/material.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/app_bar.dart';
import 'package:yala/widgets/cards/card_underline.dart';

class ViewDev extends StatelessWidget {
  const ViewDev({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Invoices',
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
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
                        borderRadius: BorderRadius.circular(3.3),
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
                          borderRadius: BorderRadius.circular(3.3),
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
                    Row(
                      children: <Widget>[
                        CardUnderline(),
                        SizedBox(
                          width: 13,
                        ),
                        CardUnderline(),
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Recently issued invoices',
                        style: TextStyle(
                          fontSize: 13.3,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
