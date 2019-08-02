import 'package:flutter/foundation.dart';

class BcCounter extends ChangeNotifier {
  int _counter = 0;
  int _counter2 = 0;

  int get counter => _counter;
  set counter(int val) {
    _counter = val;
    notifyListeners();
  }

  int get counter2 => _counter2;
  set counter2(int val) {
    _counter2 = val;
    notifyListeners();
  }

  void inc() {
    counter++;
  }

  void dec() {
    counter--;
  }
}
