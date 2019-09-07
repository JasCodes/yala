import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/boxes/box.dart';
import 'package:yala/widgets/scaffolds/status_text.dart';

class DecoratedListWhiteButton extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool dot;
  final StatusTextType type;
  final Color subTitleColor;
  final void Function() onTap;
  // final IconData iconData;
  final Widget icon;
  const DecoratedListWhiteButton({
    Key key,
    this.title,
    this.subTitle,
    this.dot = false,
    this.subTitleColor,
    this.icon,
    this.onTap,
    this.type = StatusTextType.GREY,
    // this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Box(
        decorate: false,
        color: Colors.white,
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(
            // left: 14.3,
            top: 18.3,
            bottom: 22,
          ),
          child: Row(
            children: <Widget>[
              Container(
                child: icon,
                width: 43,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      color: Style.blackColor,
                      fontSize: 13.3,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  StatusText(
                    type: type,
                    text: subTitle,
                    dot: dot,
                    color: subTitleColor,
                  ),
                  // Row(
                  //   children: subTitleText,
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
