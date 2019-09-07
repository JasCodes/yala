import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_body.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_tab.dart';

class FormWizardItem {
  final String title;
  final Widget child;

  const FormWizardItem({
    @required this.title,
    @required this.child,
  });
}

class FormWizard extends StatelessWidget {
  final List<FormWizardItem> items;
  final FormWizardStore store;

  const FormWizard({
    Key key,
    @required this.store,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<FormWizardStore>(
      builder: (_) {
        return store;
      },
      child: Column(
        children: <Widget>[
          ViewFormWizardTab(items: items),
          FormWizardBody(items: items),
        ],
      ),
    );
  }
}
