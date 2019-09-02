import 'package:flutter/material.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/boxes/box.dart';

class SectionInvoiceCreate extends StatelessWidget {
  const SectionInvoiceCreate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Box(
      gradient: Style.primaryGradient,
      onTap: () {
        Navigator.pushNamed(context, '/invoice/create');
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(23.7),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              width: 64,
              height: 64,
              child: Icon(
                IconsX.invoice_add,
                color: Style.primaryColor,
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
    );
  }
}
