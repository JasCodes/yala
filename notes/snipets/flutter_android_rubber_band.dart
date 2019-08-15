import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: ScrollConfiguration(
        behavior: BounceScrollBehavior(),
        child: HomePage(),
      ),
    );
  }
}

class BounceScrollBehavior extends ScrollBehavior {
  @override
  getScrollPhysics(_) => const BouncingScrollPhysics();
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: ListView.builder(
          itemBuilder: itemBuilder,
        )
    );
  }

  void pushPage(BuildContext context, int index){
    final route = MaterialPageRoute(
      builder: (_) => Page(index: index),
    );
    Navigator.of(context).push(route);
  }

  Widget itemBuilder(BuildContext context, int index){
    return GestureDetector(
      onTap: () => pushPage(context, index),
      behavior: HitTestBehavior.opaque,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('$index'),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  Page({Key key, this.index}): super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$index'),
      ),
    );
  }
}

