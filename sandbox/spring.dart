import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';

class PageSpring extends StatefulWidget {
  const PageSpring({Key key}) : super(key: key);

  @override
  _PageSpringState createState() => _PageSpringState();
}

class _PageSpringState extends State<PageSpring> {
  Offset pos;

  _onDrag(dynamic d) {
    setState(() {
      pos = d.localPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(0),
      child: GestureDetector(
        onVerticalDragStart: _onDrag,
        onVerticalDragUpdate: _onDrag,
        onVerticalDragEnd: _onDrag,
        child: Container(
            color: Style.backgroundColor,
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  curve: Curves.decelerate,
                  duration: Duration(milliseconds: 500),
                  left: pos != null ? pos.dx : 100,
                  top: pos != null ? pos.dy : 100,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Text(pos.toString()),
                    margin: EdgeInsets.all(20),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
