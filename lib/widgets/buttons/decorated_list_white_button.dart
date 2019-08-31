import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/boxes/box.dart';

class DecoratedListWhiteButton extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool subDot;
  final Color subTitleColor;
  final void Function() onTap;
  // final IconData iconData;
  final Widget icon;
  const DecoratedListWhiteButton({
    Key key,
    this.title,
    this.subTitle,
    this.subDot = false,
    this.subTitleColor = Style.greyColor,
    this.icon,
    this.onTap,
    // this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> subTitleText = [];
    if (subDot) {
      subTitleText.add(Container(
        margin: EdgeInsets.only(top: 1.5),
        decoration: BoxDecoration(
          color: subTitleColor,
          shape: BoxShape.circle,
        ),
        width: 6,
        height: 6,
      ));
      subTitleText.add(SizedBox(
        width: 4,
      ));
    }
    subTitleText.add(Text(
      subTitle,
      style: TextStyle(
        color: subTitleColor,
        fontSize: 10.7,
      ),
    ));

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
              // SizedBox(
              //   width: 11,
              // ),
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
                  Row(
                    children: subTitleText,
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
