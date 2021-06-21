import 'package:flutter_modular/flutter_modular.dart';

import 'authentication_page.dart';
import 'authentication_repository.dart';
import 'authentication_store.dart';

class AuthenticationModule extends Module {
  static const String routeName = "/AuthenticationModule";
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthenticationRepository()),
    Bind.lazySingleton((i) => AuthenticationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(AuthenticationPage.routeName,
        child: (_, args) => AuthenticationPage()),
  ];
}
