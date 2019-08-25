import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/components/scaffolds/form_wizard/form_wizard_store.dart';

class FormWizardBody extends StatelessWidget {
  final List<FormWizardItem> items;
  const FormWizardBody({
    Key key,
    @required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<FormWizardStore>(context);
    var children = items.map((item) => item.child).toList();
    return Flexible(
      child: Observer(
        builder: (_) {
          return PageView(
            controller: store.pageController,
            children: children.sublist(0, store.activeNum),
          );
        },
      ),
    );
  }
}
