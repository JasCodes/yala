import 'package:mobx/mobx.dart';

// Include generated file
part 'client.g.dart';

// The store-class
@store
abstract class _Client {

  @observable
  String id;
  @observable
  String personName;
  @observable
  String companyName;
  @observable
  String address;
  @observable
  String email;
  @observable
  String phone;
}
