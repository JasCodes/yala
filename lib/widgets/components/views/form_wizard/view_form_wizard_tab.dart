import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/components/views/form_wizard/view_form_wizard.dart';
import 'package:yala/widgets/components/views/form_wizard/view_form_wizard_store.dart';

class ViewFormWizardTab extends StatelessWidget {
  final List<ViewFormWizardItem> children;

  const ViewFormWizardTab({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ViewFormWizardStore>(context);
    var list = () sync* {
      for (int i = 0; i < children.length; i++) {
        yield Observer(
          builder: (_) => Container(
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 400),
              child: Text(children[i].title),
              style: TextStyle(
                fontFamily: Style.primaryFont,
                color: store.activeTab(i) ? Style.blackColor : Style.greyColor,
                fontSize: 13.3,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
        yield Icon(
          IconsX.right,
          color: Style.greyColor,
          size: 10,
        );
      }
    }()
        .toList();
    list.removeAt(list.length - 1);

    return Container(
      height: 58,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: list,
      ),
    );
  }
}
