import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_observer.dart';
import 'package:yala/mobstore.dart';

class Counter extends HookWidget {
  Counter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<MobStore>(context);
    useObserver();
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Count: ${store.count}',
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                child: Text('-'),
                onPressed: () {
                  store.count--;
                },
              ),
              RaisedButton(
                child: Text('+'),
                onPressed: () {
                  store.count++;
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
