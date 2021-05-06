import 'package:flutter_modular/flutter_modular.dart';
import 'package:lunia/app/modules/authentication/authentication_module.dart';
import 'package:lunia/app/modules/authentication/authentication_page.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(HomePage.routeName, child: (_, args) => HomePage()),
    ModuleRoute(AuthenticationPage.routeName, module: AuthenticationModule())
  ];
}
