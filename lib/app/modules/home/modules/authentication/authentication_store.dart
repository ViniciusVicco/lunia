import 'package:mobx/mobx.dart';

part 'authentication_store.g.dart';

class AuthenticationStore = _AuthenticationStoreBase with _$AuthenticationStore;

abstract class _AuthenticationStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
