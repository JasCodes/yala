import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'view_form_wizard_store.g.dart';

// This is the class used by rest of your codebase
class ViewFormWizardStore = _ViewFormWizardStore with _$ViewFormWizardStore;

// The store-class
abstract class _ViewFormWizardStore with Store {
  _ViewFormWizardStore(
    int length,
  ) : assert(length != null) {
    validList = ObservableList<bool>.of(
      List.filled(length, false),
    );
    validList[0] = true;
  }
  PageController pageController = PageController();
  @observable
  ObservableList<bool> validList;

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
