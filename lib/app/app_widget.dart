import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.white,
          colorScheme: ColorScheme.light(primary: const Color(0xFFC18B19))),
    ).modular();
  }
}
