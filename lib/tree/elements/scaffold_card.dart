import 'package:flutter/material.dart';

class ScaffoldCard extends StatelessWidget {
  const ScaffoldCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 14.3,
        top: 18.3,
        bottom: 22,
      ),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(
            width: 11,
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My Clients',
                style: TextStyle(
                  fontSize: 14.7,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '5 Saved Clients',
                style: TextStyle(
                  fontSize: 10.7,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
