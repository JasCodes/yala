import 'package:flutter/material.dart';
import 'package:yala/static/stores.dart';
import 'package:yala/static/style.dart';
import 'package:yala/stores/bottom_nav.dart';

class TransactionButton extends StatelessWidget {
  const TransactionButton({
    Key key,
    @required this.id,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final EBottomNav id;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color(0x14000000),
                offset: Offset(0, 2),
                blurRadius: 8,
                spreadRadius: 0,
              )
            ],
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {
                Stores.BottomNav.id = id;
                Stores.BottomNav.isExchange = false;
              },
              customBorder: CircleBorder(),
              child: Icon(
                icon,
                color: Style.appPrimaryColor,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff181818),
            fontSize: 12.7,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
