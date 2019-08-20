import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/components/boxes/box.dart';

class ScaffoldInvoiceInfo extends StatelessWidget {
  const ScaffoldInvoiceInfo({
    Key key,
    this.title,
    this.subTitle,
    this.iconData,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Box(
        decorate: true,
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(
            left: 14.3,
            top: 18.3,
            bottom: 22,
          ),
          child: Row(
            children: <Widget>[
              Icon(
                iconData,
                color: Style.primaryColor,
              ),
              SizedBox(
                width: 11,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Style.blackColor,
                      fontSize: 14.7,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Style.blackColor,
                      fontSize: 10.7,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
