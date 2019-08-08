import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/counter.dart';
import 'package:yala/providers.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(Providers(
    child: MaterialApp(
      home: App(),
    ),
  ));
}

class App extends HookWidget {
  App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtField1 = useState('hi');
    final bcCounter = Provider.of<BcCounter>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('hi'),
        ),
        body: Container(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextField(
                    onChanged: (value) => {txtField1.value = value},
                  ),
                  Text(txtField1.value),
                  Text(bcCounter.counter.toString()),
                  RaisedButton(
                    onPressed: () {
                      bcCounter.inc();
                    },
                  ),
                  Text(bcCounter.counter2.toString()),
                ],
              ),
              padding: EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
  }
}
