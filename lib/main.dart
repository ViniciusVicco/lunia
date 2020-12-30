import 'package:flutter/material.dart';
import 'package:lunia/screens/comomWidgets/custom_background_widget.dart';
import 'package:lunia/screens/login_screen/login_screen.dart';

void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(

      ),
    );
  }
}

