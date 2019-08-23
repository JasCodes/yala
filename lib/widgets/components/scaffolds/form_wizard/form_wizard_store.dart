import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'form_wizard_store.g.dart';

// This is the class used by rest of your codebase
class FormWizardStore = _FormWizardStore with _$FormWizardStore;

// The store-class
abstract class _FormWizardStore with Store {
  _FormWizardStore(
    int length,
  ) : assert(length != null) {
    validList = ObservableList<bool>.of(
      List.filled(length, false),
    );
    validList[0] = true;

    lengthStatus = ObservableList<double>.of(
      List.filled(length, 0.0),
    );
    dx = ObservableList<double>.of(
      List.filled(length, 0.0),
    );
  }
  PageController pageController = PageController();

  @observable
  ObservableList<bool> validList;

  @observable
  ObservableList<double> lengthStatus;

  @observable
  ObservableList<double> dx;

  bool activeTab(int index) {
    if (validList[index]) {
      if (index > 0)
        return activeTab(index - 1);
      else
        return true;
    }
    return false;
  }
}
