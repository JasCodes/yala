import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/primitives/iconx.dart';
import 'package:yala/widgets/scaffolds/status_text.dart';

class DateTimeField extends StatelessWidget {
  final FieldState<DateTime> state;
  const DateTimeField({
    Key key,
    this.state,
  }) : super(key: key);
  _buildErrorGroup() {
    return Observer(
      builder: (_) => AnimatedSwitcher(
        switchInCurve: Curves.linear,
        switchOutCurve: Curves.linear,
        transitionBuilder: (child, animation) => SizeTransition(
          sizeFactor: animation,
          child: FadeTransition(
            child: child,
            opacity: animation,
          ),
        ),
        duration: Duration(milliseconds: 300),
        child: state.errorContext.errors.length > 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                key: UniqueKey(),
                children: state.errorContext.errors
                    .map(
                      (error) => Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        child: StatusText(
                          dot: true,
                          type: StatusTextType.RED,
                          text: error.message,
                        ),
                      ),
                    )
                    .toList(),
              )
            : Column(
                key: UniqueKey(),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(state.label),
        SizedBox(
          height: 14.3 / 2,
        ),
        _buildErrorGroup(),
        SizedBox(
          height: 14.3 / 2,
        ),
        new Container(
          height: 44,
          decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3.3),
            boxShadow: [
              BoxShadow(
                color: Color(0x14000000),
                offset: Offset(0, 2),
                blurRadius: 4,
                spreadRadius: 0,
              )
            ],
          ),
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              onTap: () {
                DatePicker.showDatePicker(
                  context,
                  currentTime: state.value,
                  showTitleActions: false,
                  onChanged: (val) => state.value = val,
                );
              },
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 14.3),
                        child: Observer(
                          builder: (_) {
                            return Text(
                              Intl().date('dd MMM yyyy').format(state.value),
                              style: TextStyle(
                                fontSize: 16,
                                color: Style.primaryColor,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          },
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 14.3),
                    child: IconX(
                      IconsX.cal,
                      size: 20,
                      color: Style.blackColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
