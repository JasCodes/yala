import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          padding: EdgeInsets.all(2),
          color: Style.appPrimaryColor,
          // highlightColor: Style.appPrimarySwatchColor,
          focusColor: Style.appPrimarySwatchColor,
          icon: Icon(
            Icons.ac_unit,
            size: 40,
          ),
          onPressed: () {
            print('hi');
          },
        ),
        Text('hi'),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
