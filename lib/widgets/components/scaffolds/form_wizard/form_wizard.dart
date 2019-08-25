import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard_body.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard_store.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard_tab.dart';

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

  const FormWizard({
    Key key,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<FormWizardStore>(
      builder: (_) {
        return FormWizardStore(
          items.length,
        );
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
