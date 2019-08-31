import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/stores/test_noti.dart';
import 'package:yala/widgets/boxes/list_white_div.dart';

class AccountsRecentTransactionsSection extends StatelessWidget {
  const AccountsRecentTransactionsSection({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final s = StoreTextNoti();

    return Provider<StoreTextNoti>(
      builder: (_) => s,
      child: GestureDetector(
        onTapDown: (dd) {
          s.titles.add('xxxxx');
          print(s.titles);
        },
        child: ListWhiteDiv(),
      ),
    );
  }
}
