import 'package:mobx/mobx.dart';

// Include generated file
part 'chart_store.g.dart';

// The store-class
@store
abstract class _ChartStore {
  @observable
  int knobIndex = 0;
}
