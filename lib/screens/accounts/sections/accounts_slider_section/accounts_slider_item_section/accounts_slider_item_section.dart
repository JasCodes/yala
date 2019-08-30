import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/screens/accounts/sections/accounts_slider_section/accounts_slider_item_section/accounts_slider_item_info_section.dart';
// import 'package:yala/screens/accounts/sections/accounts_slider_section/accounts_slider_item_section/accounts_slider_item_store.dart';
import 'package:yala/screens/accounts/widgets/chart/chart.dart';
import 'package:yala/screens/accounts/widgets/chart/chart_store.dart';

class AccountsSliderItemSection extends StatelessWidget {
  static const WIDGET_HEIGHT =
      Chart.WIDGET_HEIGHT + AccountsSliderItemInfoSection.WIDGET_HEIGHT;

  final int index;
  final PageController pageController;
  const AccountsSliderItemSection(
    this.index,
    this.pageController, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<ChartStore>(
      builder: (_) => ChartStore(),
      child: Column(
        children: <Widget>[
          AccountsSliderItemInfoSection(index, pageController),
          Chart(index),
        ],
      ),
    );
  }
}
