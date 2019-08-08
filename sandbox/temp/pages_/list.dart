import 'package:flutter/material.dart';
import 'package:yala/navigation/screen.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key key, this.screen}) : super(key: key);

  final Screen screen;

  @override
  Widget build(BuildContext context) {
    const List<int> shades = <int>[
      50,
      100,
      200,
      300,
      400,
      500,
      600,
      700,
      800,
      900
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(screen.title),
        // backgroundColor: screen.color,
      ),
      // backgroundColor: screen.color[50],
      body: SizedBox.expand(
        child: ListView.builder(
          itemCount: shades.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 128,
              child: Card(
                // color: screen.color[shades[index]].withOpacity(0.25),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/text");
                  },
                  child: Center(
                    child: Text('Item $index',
                        style: Theme.of(context).primaryTextTheme.display1),
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
