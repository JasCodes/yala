import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:yala/stores/ui.dart';

class BottomSheetX extends StatefulWidget {
  BottomSheetX({Key key, this.child}) : super(key: key);

  final Widget child;
  // final W context;
  _BottomSheetXState createState() => _BottomSheetXState();
}

class _BottomSheetXState extends State<BottomSheetX> {
  @override
  Widget build(BuildContext context) {
    final store = UIStore();
    autorun((_) {
      print('xx');
      print(store.showBottomSheetX);
      {
        showModalBottomSheet<void>(
          context: context,
          // shape: Border(left: BorderSide(color: Colors.red, width: 50)),
          builder: (builder) {
            return new Container(
              height: 200.0,
              color: Colors.transparent,
              // color: Colors.transparent, //could change this to Color(0xFF737373),
              //so you don't have to change MaterialApp canvasColor
              child: ClipPath(
                // clipper: Path.from(),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.elliptical(2500, 700),
                        topRight: const Radius.elliptical(2500, 700),
                      ),
                    ),
                    child: Center(
                      child: Text("This is a modal sheet"),
                    )),
              ),
            );
          },
        );
      }
    });
    return widget.child;
  }
}
