import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/models/user.dart';
import 'package:yala/screens/accounts/sections/accounts_slider_section/accounts_slider_item_section/accounts_slider_item_section.dart';

class AccountsSliderSection extends StatelessWidget {
  const AccountsSliderSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<User>(context);
    final pageController = PageController(keepPage: true, initialPage: 10000);
    return Container(
      height: AccountsSliderItemSection.WIDGET_HEIGHT,
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (context, index) {
          var i = index % store.accounts.length;
          return AccountsSliderItemSection(i, pageController);
        },
      ),
    );
  }
}
