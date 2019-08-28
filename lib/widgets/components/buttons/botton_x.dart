import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

const radius = 23.3;

class ButtonX extends StatelessWidget {
  final bool isActive;
  final String title;
  final void Function() onTap;
  const ButtonX({
    Key key,
    this.title = '',
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _isActive = onTap != null && isActive;
    var _onTap = _isActive ? onTap : null;
    var _color = _isActive
        ? Style.secondaryColor
        : Style.secondaryColor.withOpacity(0.5);
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: _color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: _onTap,
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: 11,
            ),
            child: Center(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
