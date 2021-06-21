import 'package:lunia/app/modules/register/register_page_second.dart';
import 'package:lunia/app/modules/register/register_repository.dart';
import 'package:lunia/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register_page.dart';

class RegisterModule extends Module {
  static const String routeName = '/RegisterModule';
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterRepository()),
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(RegisterPage.routeName, child: (_, args) => RegisterPage()),
    ChildRoute(RegisterPageSecond.routeName,
        child: (_, args) => RegisterPageSecond()),
  ];
}
