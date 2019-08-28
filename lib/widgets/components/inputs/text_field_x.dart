import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yala/packages/forms_x/ensure_visible_when_focused.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/static/style.dart';

class TextEditingControllerWorkaroud extends TextEditingController {
  TextEditingControllerWorkaroud({String text}) : super(text: text);

  void setTextAndPosition(String newText, {int caretPosition}) {
    int offset = caretPosition != null ? caretPosition : newText.length;
    value = value.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: offset),
      composing: TextRange.empty,
    );
  }
}

class TextFieldX extends StatelessWidget {
  final FieldState input;
  final FieldState nextFocusField;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final int minLines;
  final int maxLines;
  final void Function(String) onSubmitted;

  TextFieldX(
    this.input, {
    Key key,
    this.nextFocusField,
    this.textInputAction,
    this.textInputType,
    this.minLines,
    this.maxLines,
    this.onSubmitted,
  }) : super(key: key);

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  // var _controller = TextEditingControllerWorkaroud();

  @override
  Widget build(BuildContext context) {
    var _textInputAction = textInputAction;
    if (nextFocusField != null && textInputAction == null) {
      _textInputAction = TextInputAction.next;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          input.label,
          style: TextStyle(
            color: Style.greyColor,
            fontSize: 14.7,
          ),
        ),
        Observer(
          builder: (_) => Text(
            input.errorContext.errors.toString(),
            style: TextStyle(
              color: Style.greyColor,
              fontSize: 14.7,
            ),
          ),
        ),
        EnsureVisibleWhenFocused(
          focusNode: input.focusNode,
          curve: Curves.bounceIn,
          duration: Duration(milliseconds: 300),
          child: TextField(
            // controller: _controller,
            onChanged: (value) {
              input.value = value;
            },
            autocorrect: false,
            textCapitalization: TextCapitalization.words,
            keyboardType: textInputType,
            focusNode: input.focusNode,
            onSubmitted: (value) {
              print(input.value);
              // _controller.setTextAndPosition('${_controller.text}\n',caretPosition: 5);
              // input.focusNode.requestFocus();
              _fieldFocusChange(
                context,
                input.focusNode,
                nextFocusField.focusNode,
              );
              onSubmitted(value);
            },
            textInputAction: _textInputAction,
            maxLines: maxLines,
            minLines: minLines,
            style: TextStyle(
              color: Style.primaryColor,
              fontSize: 18.7,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10),
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
