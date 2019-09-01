import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yala/packages/forms_x/ensure_visible_when_focused.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/scaffolds/status_text.dart';

class CurrencyAmountField extends StatelessWidget {
  final FieldState state;
  final FieldState nextFocusField;
  final Color labelColor;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final void Function(String) onSubmitted;

  CurrencyAmountField(
    this.state, {
    Key key,
    this.labelColor = Style.greyColor,
    this.nextFocusField,
    this.textInputAction,
    this.textInputType,
    this.onSubmitted,
  }) : super(key: key);

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    var _textInputAction = textInputAction;
    if (nextFocusField != null && textInputAction == null) {
      _textInputAction = TextInputAction.next;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Title
        Text(
          state.label,
          style: TextStyle(
            color: labelColor,
            fontSize: 14.7,
          ),
        ),
        Observer(
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
                        .toList()
                        .reversed
                        .toList(),
                  )
                : Column(
                    key: UniqueKey(),
                  ),
          ),
        ),
        EnsureVisibleWhenFocused(
          focusNode: state.focusNode,
          curve: Curves.bounceIn,
          duration: Duration(milliseconds: 300),
          child: TextField(
            onChanged: (value) {
              state.value = value;
            },
            autocorrect: false,
            textCapitalization: TextCapitalization.words,
            keyboardType: textInputType,
            focusNode: state.focusNode,
            onSubmitted: (value) {
              _fieldFocusChange(
                context,
                state.focusNode,
                nextFocusField.focusNode,
              );
              onSubmitted(value);
            },
            textInputAction: _textInputAction,
            style: TextStyle(
              color: Style.primaryColor,
              fontSize: 18.7,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Style.greyColor,
                  width: 0.7,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Style.primaryColor, width: 0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
