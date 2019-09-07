import 'package:flutter/material.dart';
import 'package:yala/static/formater.dart';

class AmountTextController extends TextEditingController {
  final double initialValue;
  int _numInt;

  double get number {
    return _numInt * 0.01;
  }

  set number(double val) {
    _numInt = (val * 100).round();
  }

  String get _getText {
    return Formatter.numC.format(number);
  }

  // String prevText;

  TextSelection get _getSelection {
    var offset = this.text.length;
    return TextSelection(baseOffset: offset, extentOffset: offset);
  }

  int _textToNum(String text) {
    if (text.isEmpty) return 0;
    return int.parse(text.replaceAll(RegExp(r"[^0-9]*"), ''));
    // return int.parse(this.text.replaceAll(',', '').replaceAll('.', ''));
  }

  // int get getSubSelNum {
  //   var sub = this.text.substring(this.selection.baseOffset);
  //   return textToNum(sub);
  // }

  _update() {
    _numInt = _textToNum(this.text);
    this.value = TextEditingValue(
      text: _getText,
      selection: _getSelection,
      composing: TextRange.empty,
    );
  }

  AmountTextController({this.initialValue = 0}) {
    number = this.initialValue;
    _update();
    this.addListener(_update);
  }
}
