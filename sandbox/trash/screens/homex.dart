import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/counter.dart';

class ScHomex extends StatelessWidget {
  const ScHomex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bcCounter = Provider.of<BcCounter>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Homex'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this times:',
            ),
            Text(
              '${bcCounter.counter}',
              style: Theme.of(context).textTheme.display1,
            ),
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
