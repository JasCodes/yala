import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  _NavigatorPageState createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(
      text: 'sample text: ${widget.child}',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return new MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  widget.child,
                  SizedBox(height: 16.0),
                  RaisedButton(
                    child: Text('push a route'),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return Scaffold(
                            appBar: AppBar(
                                title: Text('Route for ${widget.child}')),
                            body: Container(
                              padding: const EdgeInsets.all(16.0),
                              alignment: Alignment.center,
                              child: TextField(controller: _textController),
                            ),
                          );
                        },
                      ));
                    },
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
