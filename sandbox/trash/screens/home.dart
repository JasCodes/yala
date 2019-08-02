import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/counter.dart';

class ScHome extends StatelessWidget {
  const ScHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bcCounter = Provider.of<BcCounter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${bcCounter.counter}',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/homex');
              },
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: bcCounter.inc,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      // bottomNavigationBar: WtBottomNavBar(),
    );
  }
}
