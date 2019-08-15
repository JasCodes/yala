import 'package:flutter/material.dart';
import 'package:yala/widgets/app_bar.dart';

class ScreenPayroll extends StatefulWidget {
  const ScreenPayroll({Key key}) : super(key: key);

  @override
  _ScreenPayrollState createState() => _ScreenPayrollState();
}

class _ScreenPayrollState extends State<ScreenPayroll> {
  final keyx = GlobalKey<AnimatedListState>();
  // final list = ListModel
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarX(
        title: 'Payroll',
      ),
      body: Container(
        // height: 200,
        color: Colors.lime,
        child: AnimatedList(
          key: keyx,
          initialItemCount: 1,
          itemBuilder: (context, index, animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: Padding(
                key: GlobalKey(),
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  color: Colors.deepOrangeAccent[100],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AnimatedSwitcher(
                          duration: Duration(milliseconds: 3000),
                          child: Text(
                            index.toString(),
                            key: Key('${index}'),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          keyx.currentState.insertItem(index);
                        },
                        child: Icon(Icons.add),
                      ),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          keyx.currentState.removeItem(
                            index,
                            (context, animation) {
                              return SlideTransition(
                                position: animation.drive(
                                  Tween<Offset>(
                                    begin: Offset(0.25, 0),
                                    end: Offset(-0.75, 0),
                                  ),
                                ),
                                child: Container(
                                  height: 80,
                                  child: Text('kajsfdlkjfdslj'),
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(Icons.remove),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
