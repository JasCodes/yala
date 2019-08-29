import 'package:flutter/material.dart';

class ChartSlider extends StatelessWidget {
  const ChartSlider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;

        return Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height * 0.5,
                width: width / 7,
                color: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}
