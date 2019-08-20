import 'package:flutter/material.dart';
import 'package:yala/widgets/components/views/form_wizard/view_form_wizard_tab.dart';

class ViewFormWizardItem {
  final String title;
  final int index;
  final bool isValidated;
  final Widget child;
  // final Widget Function(BuildContext context, bool validated) builder;

  const ViewFormWizardItem({
    @required this.title,
    @required this.index,
    @required this.isValidated,
    @required this.child,

    // @required this.builder,
  });
}

class ComponentFormWizard extends StatelessWidget {
  final List<ViewFormWizardItem> children;

  const ComponentFormWizard({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewFormWizardTab(
      children: children,
    );
  }
}