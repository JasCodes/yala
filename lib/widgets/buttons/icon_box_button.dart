import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/boxes/box.dart';

class IconBoxButton extends StatelessWidget {
  final String title;
  final IconData iconData;
  final void Function() onTap;
  const IconBoxButton({
    Key key,
    this.title,
    this.iconData,
    this.onTap,
  }) : super(key: key);

  // Todo scroll
  // NotificationListener<ScrollNotification>(
  //     onNotification: (x) {
  //       print(x);
  //       return true;
  //     },

  @override
  Widget build(BuildContext context) {
    return Box(
      gradient: Style.primaryGradient,
      onTap: onTap,
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
                iconData,
                color: Style.primaryColor,
              ),
            ),
            SizedBox(
              height: 14.7,
            ),
            Text(
              title,
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
