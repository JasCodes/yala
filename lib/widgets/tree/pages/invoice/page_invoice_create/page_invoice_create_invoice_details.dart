import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:yala/hooks/use_observer.dart';
import 'package:yala/static/style.dart';

import 'package:yala/widgets/components/views/form_wizard/view_form_wizard_store.dart';

class PageInvoiceCreateInvoiceDetails extends HookWidget {
  const PageInvoiceCreateInvoiceDetails({
    Key key,
    @required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    useObserver();
    final store = Provider.of<ViewFormWizardStore>(context);
    return Container(
      color: Style.backgroundColor,
      child: Column(
        children: <Widget>[
          Text(store.validList.toString()),
          Checkbox(
            onChanged: (val) {
              store.validList[index] = val;
            },
            value: store.validList[index],
          ),
        ],
      ),
    );
  }
}
