import 'package:flutter/material.dart';

class AppBarX extends StatelessWidget with PreferredSizeWidget {
  AppBarX({
    Key key,
    @required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      // backgroundColor: Colors.transparent,
      backgroundColor: Color(0xffe4e8f0).withOpacity(0.08844866071428571),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          letterSpacing: 2 / 3,
          fontSize: 17.3,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
