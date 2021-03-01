import 'package:flutter/material.dart';
import 'package:lunia/screens/login_screen/login_screen.dart';
import 'package:lunia/screens/register_screens/register_screen.dart';
import 'package:lunia/screens/register_screens/register_screen2.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => LoginScreen(),
        '/register1': (context) => RegisterScreen(),
        '/register2': (context) => RegisterScreen2(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        accentColor: Color(0xff825904),
        colorScheme: ColorScheme.light(primary: const Color(0xff825904)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
    );
  }
}

