import 'package:flutter/material.dart';
import 'package:yala/screens/accounts/sections/accounts_info_section/accounts_info_section.dart';

import 'package:yala/app_bar.dart';
import 'package:yala/widgets/texts/tx.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBarX(
        title: 'Funds Transfer',
        isTransparent: true,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                SizedBox(height: 25.3),
                TxBB(14.7, "How would you like to transfer?"),
                SizedBox(height: 27.3),
                SizedBox(height: 340),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: AccountsInfoSection(),
          )
        ],
      ),
    );
  }
}
