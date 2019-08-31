import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_autorun.dart';
import 'package:yala/stores/test_noti.dart';

class ListWhiteDiv extends HookWidget {
  ListWhiteDiv({
    Key key,
    // @required this.store,
  }) : super(key: key);

  // final StoreTextNoti store;
  final gk = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<StoreTextNoti>(context);
    useAutorun((_) {
      print(store.titles);
      // store.titles;
      gk.currentState.insertItem(0);
    });

    return GestureDetector(
      onTap: () {
        // print(store.titles);
      },
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: new BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AnimatedList(
            physics: NeverScrollableScrollPhysics(),
            key: gk,
            shrinkWrap: true,
            initialItemCount: store.titles.length,
            itemBuilder: (context, index, animation) {
              if (index + 1 == store.titles.length) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: Center(
                    child: Text(store.titles[index]),
                  ),
                );
              }
              return SizeTransition(
                sizeFactor: animation,
                child: Column(
                  children: <Widget>[
                    Text(store.titles[index]),
                    Divider(),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
