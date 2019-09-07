import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:locales/currency_codes.dart';
import 'package:yala/packages/forms_x/ensure_visible_when_focused.dart';
import 'package:yala/packages/mobx_forms/field_state.dart';
import 'package:yala/static/icons.dart';
import 'package:yala/static/style.dart';
import 'package:yala/widgets/primitives/iconx.dart';
import 'package:yala/widgets/scaffolds/amount_text_controller.dart';
import 'package:yala/widgets/scaffolds/status_text.dart';

class CurrencyAmountField extends HookWidget {
  static const double CURRENCY_WIDTH = 100;
  final FieldState<CurrencyCode> currencyState;
  final FieldState<double> amountState;

  final FieldState nextFocusField;
  final Color labelColor;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final void Function(String) onSubmitted;

  CurrencyAmountField({
    Key key,
    this.currencyState,
    this.amountState,
    this.labelColor = Style.blackColor,
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

  _bluidLabelGroup() {
    return Row(
      children: <Widget>[
        Container(
          width: CURRENCY_WIDTH,
          child: Text(
            currencyState.label,
            style: TextStyle(
              color: labelColor,
              fontSize: 14.7,
            ),
          ),
        ),
        Text(
          amountState.label,
          style: TextStyle(
            color: labelColor,
            fontSize: 14.7,
          ),
        ),
      ],
    );
  }

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
        child: amountState.errorContext.errors.length > 0
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                key: UniqueKey(),
                children: amountState.errorContext.errors
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

  _buildDropDown(BuildContext context) {
    var list =
        [CurrencyCode.aed, CurrencyCode.usd, CurrencyCode.eur].map((code) {
      return DropdownMenuItem<CurrencyCode>(
        child: Text(code.toString()),
        value: code,
      );
    }).toList();
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
      ),
      child: ButtonTheme(
        child: Observer(
          builder: (_) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<CurrencyCode>(
                  items: list,
                  style: TextStyle(
                    color: Style.primaryColor,
                    fontFamily: Style.primaryFont,
                    fontSize: 23.3,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RotatedBox(
                      quarterTurns: 1,
                      child: IconX(
                        IconsX.right,
                        size: 23.3 * 0.75,
                        color: Style.primaryColor,
                      ),
                    ),
                  ),
                  elevation: 0,
                  onChanged: (value) {
                    currencyState.value = value;
                  },
                  value: currencyState.value,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _buildTextField(BuildContext context) {
    var _textInputAction = textInputAction;
    if (nextFocusField != null && textInputAction == null) {
      _textInputAction = TextInputAction.next;
    }
    // final controller = new MoneyMaskedTextController(
    // decimalSeparator: '.', thousandSeparator: ',', initialValue: 0);
    final controller = AmountTextController();
    controller.addListener(() {
      amountState.value = controller.number;
    });
    return TextField(
      controller: controller,
      // onChanged: (value) {
      //   amountState.value = value;
      // },
      // inputFormatters: [
      //   // formatter,
      //   // WhitelistingTextInputFormatter.digitsOnly,
      //   // BlacklistingTextInputFormatter.singleLineFormatter,
      // ],
      autocorrect: false,
      keyboardType: TextInputType.number,
      focusNode: amountState.focusNode,
      onSubmitted: (value) {
        if (nextFocusField != null)
          _fieldFocusChange(
            context,
            amountState.focusNode,
            nextFocusField.focusNode,
          );
        onSubmitted(value);
      },
      textInputAction: _textInputAction,
      style: TextStyle(
        color: Style.primaryColor,
        fontSize: 40,
      ),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.only(left: CURRENCY_WIDTH, top: 10, bottom: 10),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _bluidLabelGroup(),
        _buildErrorGroup(),
        EnsureVisibleWhenFocused(
          focusNode: amountState.focusNode,
          curve: Curves.bounceIn,
          duration: Duration(milliseconds: 300),
          child: Stack(
            children: <Widget>[
              _buildTextField(context),
              _buildDropDown(context),
            ],
          ),
        ),
      ],
    );
  }
}
