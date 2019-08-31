import 'package:mobx/mobx.dart';
import 'package:yala/models/beneficiary.dart';

// Include generated file
part 'vendor.g.dart';

// The store-class
@store
abstract class _Vendor {
  @observable
  String title;

  @observable
  String imagePath;

  @observable
  ObservableList<Beneficiary> beneficiaries = ObservableList.of([]);
}
