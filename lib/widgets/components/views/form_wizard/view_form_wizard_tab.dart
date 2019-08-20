import 'package:flutter/material.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/components/views/form_wizard/view_form_wizard.dart';

class ViewFormWizardTab extends StatefulWidget {
  final List<ViewFormWizardItem> children;
  // List<bool> l = null;
  ViewFormWizardTab({
    Key key,
    @required this.children,
  }) : super(key: key);

  @override
  _ViewFormWizardTabState createState() => _ViewFormWizardTabState();
}

class _ViewFormWizardTabState extends State<ViewFormWizardTab> {
  var l;
  @override
  void initState() {
    // WidgetsBinding.instance.addPersistentFrameCallback((x) => print(x));
    l = widget.children.map((_) => false).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var x = () sync* {
      for (int i = 0; i < widget.children.length; i++) {
        yield GestureDetector(
          onTap: () {
            setState(() {
              l[i] = !l[i];
            });
            print(l);
          },
          child: AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 400),
            child: Text(widget.children[i].title),
            style: TextStyle(
              fontFamily: Style.primaryFont,
              color: l[i] ? Style.blackColor : Style.greyColor,
              fontSize: 13.3,
              fontWeight: FontWeight.w500,
            ),
          ),
        );
        yield Text(
          '>',
          style: TextStyle(
            color: Style.greyColor,
            // fontSize: 1.3,
            fontWeight: FontWeight.w500,
          ),
        );
      }
    }()
        .toList();
    x.removeAt(x.length - 1);

    return Container(
      height: 58,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: x,
      ),
    );
  }
}
