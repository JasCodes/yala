import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/boxes/box.dart';

class SelectBoxItem {
  final String id;
  final String title;
  final String subTitle;

  SelectBoxItem({
    @required this.id,
    this.title,
    this.subTitle,
  });
}

class SelectBox extends HookWidget {
  final List<SelectBoxItem> children;

  final void Function(String id) onSelected;
  const SelectBox({
    Key key,
    this.children,
    this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedId = useState(children[0].id);

    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      itemCount: children.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var item = children[index];
        var textColor = Style.blackColor;
        var decorate = true;
        if (item.id == selectedId.value) {
          decorate = false;
          textColor = Colors.white;
        }
        return GestureDetector(
          onTap: () {
            selectedId.value = item.id;
            onSelected(item.id);
          },
          child: Box(
            decorate: decorate,
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: 17.3,
                horizontal: 20,
              ),
              child: AnimatedDefaultTextStyle(
                duration: Duration(milliseconds: 300),
                style: TextStyle(
                  fontFamily: Style.primaryFont,
                  color: textColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      item.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 4.7,
                    ),
                    Text(
                      item.subTitle,
                      style: TextStyle(
                        fontSize: 10.7,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 15.3,
        );
      },
    );
  }
}
