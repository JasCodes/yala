import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'view_form_wizard_store.g.dart';

// This is the class used by rest of your codebase
class ViewFormWizardStore = _ViewFormWizardStore with _$ViewFormWizardStore;

// The store-class
abstract class _ViewFormWizardStore with Store {
  _ViewFormWizardStore({
    @required this.size,
  }) : assert(size != null) {}

  final int size;
}
