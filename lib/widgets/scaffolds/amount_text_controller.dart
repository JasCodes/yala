import 'package:flutter/material.dart';
import 'package:yala/static/formater.dart';

class AmountTextController extends TextEditingController {
  final double initialValue;
  int numValue;
  String get getText {
    var _num = numValue * 0.01;
    return Formatter.numC.format(_num);
  }

  // String prevText;

  TextSelection get getSelection {
    var offset = this.text.length;
    return TextSelection(baseOffset: offset, extentOffset: offset);
  }

  int textToNum(String text) {
    return int.parse(text.replaceAll(RegExp(r"[^0-9]*"), ''));
    // return int.parse(this.text.replaceAll(',', '').replaceAll('.', ''));
  }

  // int get getSubSelNum {
  //   var sub = this.text.substring(this.selection.baseOffset);
  //   return textToNum(sub);
  // }

  AmountTextController({this.initialValue = 0}) {
    numValue = (initialValue * 100).round();
    // prevText = getText;
    this.addListener(() {
      numValue = textToNum(this.text);
      this.value = TextEditingValue(
          text: getText, selection: getSelection, composing: TextRange.empty);
      // sel = getSubSelNum;
    });
  }
}
