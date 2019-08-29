import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class AppBarX extends StatelessWidget with PreferredSizeWidget {
  AppBarX({
    Key key,
    @required this.title,
    this.isTransparent = false,
    this.bottom,
  }) : super(key: key);
  final String title;
  final bool isTransparent;
  final PreferredSizeWidget bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: isTransparent
          ? Color(0xffe4e8f0).withOpacity(0.08844866071428571)
          : null,
      flexibleSpace: !isTransparent
          ? Container(
              decoration: BoxDecoration(
                gradient: Style.primaryGradient,
              ),
            )
          : null,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          letterSpacing: 0.67,
          fontSize: 17.3,
        ),
      ),
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(bottom == null ? kToolbarHeight : 110);
}
