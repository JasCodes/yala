import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class ButtonDotted extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const ButtonDotted({
    Key key,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onTap,
        child: DottedBorder(
          strokeWidth: 1.3,
          color: Color(0x7f252525),
          borderType: BorderType.RRect,
          radius: Radius.circular(3.3),
          dashPattern: [1.5, 3],
          child: Container(
            margin: EdgeInsets.only(top: 19, bottom: 22),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    width: 45.3,
                    height: 45.3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Style.primaryColor,
                    ),
                    // child: Icon(
                    //   Icons.add,
                    //   color: Colors.white,
                    // ),
                    child: Align(
                      alignment: Alignment(0, -0.5),
                      child: Text(
                        '+',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 33.3,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14.3,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Style.blackColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
