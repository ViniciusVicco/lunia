import 'package:lunia/app/modules/authentication/authentication_repository.dart';
import 'package:lunia/app/modules/authentication/authentication_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthenticationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthenticationRepository()),
    Bind.lazySingleton((i) => AuthenticationStore()),
  ];

  @override
  final List<ModularRoute> routes = [];
}
