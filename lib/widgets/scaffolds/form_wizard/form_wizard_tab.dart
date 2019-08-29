import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard.dart';
import 'package:yala/widgets/scaffolds/form_wizard/form_wizard_store.dart';

const double HEIGHT_TAB = 58;
const double HEIGHT_TAB_SELECTION_LINE = 2.7;

class ViewFormWizardTab extends StatefulWidget {
  final List<FormWizardItem> items;

  ViewFormWizardTab({
    Key key,
    @required this.items,
  }) : super(key: key);

  @override
  _ViewFormWizardTabState createState() => _ViewFormWizardTabState();
}

class _ViewFormWizardTabState extends State<ViewFormWizardTab>
    with AfterLayoutMixin, WidgetsBindingObserver {
  final gkContainer = GlobalKey();
  final List<GlobalKey> gkl = List<GlobalKey>();

  List<Widget> _buildTabRowList() {
    var store = Provider.of<FormWizardStore>(context);

    var list = () sync* {
      for (int i = 0; i < widget.items.length; i++) {
        yield Observer(
          builder: (_) => GestureDetector(
            onTap: store.activeTab(i == 0 ? 0 : i - 1)
                ? () {
                    store.pageController.animateToPage(
                      i,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.fastOutSlowIn,
                    );
                  }
                : null,
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 400),
              child: Text(
                widget.items[i].title,
                key: gkl[i],
              ),
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
    return list;
  }

  Widget _buildTabItems() {
    return Container(
      key: gkContainer,
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: _buildTabRowList(),
      ),
    );
  }

  Widget _buildTabSelectionLine() {
    var store = Provider.of<FormWizardStore>(context);

    return AnimatedBuilder(
      animation: store.pageController,
      builder: (context, _) {
        return Observer(
          builder: (context) {
            PageController controller = store.pageController;
            double page = controller.hasClients ? controller.page : 0.0;

            var factor = 1.2;
            var l1 = store.lengthStatus[page.floor()];
            var lfr = page - page.floor();
            var len = l1;
            // print('$l1, $lfr');
            var l2;
            if (lfr != 0) {
              l2 = store.lengthStatus[page.floor() + 1];
              var dl = l2 - l1;
              len += dl * lfr;
            }
            len *= factor;

            var x1 = store.dx[page.floor()] + (1 - factor) * l1 / 2;
            var xfr = page - page.floor();
            var left = x1;
            // print('$x1, $xfr');
            if (xfr != 0) {
              var x2 = store.dx[page.floor() + 1] +
                  (l2 != null ? (1 - factor) * l2 / 2 : 0);
              var dx = x2 - x1;
              left += dx * xfr;
            }

            return Positioned(
              top: HEIGHT_TAB - HEIGHT_TAB_SELECTION_LINE,
              left: left,
              child: Container(
                width: len,
                height: HEIGHT_TAB_SELECTION_LINE * 2,
                decoration: new BoxDecoration(
                  color: Color(0xfffbc415),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
        );
      },
    );
  }

  _updateTabItemsRenderbox() {
    var store = Provider.of<FormWizardStore>(context);
    gkl.asMap().forEach((index, gk_) {
      var renderBox = gk_.currentContext?.findRenderObject() as RenderBox;
      store.lengthStatus[index] = renderBox.size.width;
      store.dx[index] = renderBox
          .localToGlobal(
            Offset.zero,
            ancestor: gkContainer.currentContext.findRenderObject(),
          )
          .dx;
    });
    // print(store);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    for (var _ in widget.items) {
      gkl.add(GlobalKey());
    }
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    _updateTabItemsRenderbox();
    super.didChangeMetrics();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _updateTabItemsRenderbox();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: HEIGHT_TAB,
      color: Colors.white,
      child: Stack(
        children: [
          _buildTabItems(),
          _buildTabSelectionLine(),
        ],
      ),
    );
  }
}
