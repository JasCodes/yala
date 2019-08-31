import 'package:mobx/mobx.dart';

// Include generated file
part 'beneficiary.g.dart';

// The store-class
@store
abstract class _Beneficiary {
  @observable
  String id;
  @observable
  String title;
}
