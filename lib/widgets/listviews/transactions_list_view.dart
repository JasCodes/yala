import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TransactionsListView extends HookWidget {
  const TransactionsListView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final store = Provider.of<(context);
    final key = useState(GlobalKey<AnimatedListState>());
    // key.value.currentState.insertItem();
    return Container(
      key: key.value,
    );
  }
}
