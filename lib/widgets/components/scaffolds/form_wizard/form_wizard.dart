import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard_tab.dart';

class ViewFormWizardItem {
  final String title;
  final Widget child;

  const ViewFormWizardItem({
    @required this.title,
    @required this.child,
  });
}

class ViewFormWizard extends StatelessWidget {
  final List<ViewFormWizardItem> children;

  const ViewFormWizard({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Provider<FormWizardStore>(
        builder: (_) => FormWizardStore(
          children.length,
        ),
        child: Column(
          children: <Widget>[
            ViewFormWizardTab(
              children: children,
            ),
            Flexible(
              child: Observer(
                builder: (con) {
                  var store = Provider.of<FormWizardStore>(con);
                  print(store.validList);
                  var items = List<Widget>();
                  children.asMap().forEach((index, item) {
                    if (index == 0 || store.activeTab(index - 1)) {
                      final gk = GlobalKey();
                      items.add(
                        Container(
                          key: gk,
                          child: item.child,
                        ),
                      );
                    }
                  });
                  return PageView(
                    controller: store.pageController,
                    // children: children.map((item) => item.child).toList()
                    children: items,
                  );
                },
              ),
            ),
          ],
        ),
      );
}
