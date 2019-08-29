import 'package:flutter/material.dart';
import 'package:yala/navigation/screen.dart';
import 'package:yala/bottom_sheet_x.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key key, this.screen}) : super(key: key);

  final Screen screen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(screen.title),
        // backgroundColor: screen.color,
      ),
      // backgroundColor: screen.color[50],
      body: BottomSheetX(
        child: SizedBox.expand(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/list");
            },
            child: Center(
              child: Text('tap here'),
            ),
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
