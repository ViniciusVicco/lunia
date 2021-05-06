import 'package:flutter/material.dart';

class AuthenticationPage extends StatefulWidget {
  final String title;
  const AuthenticationPage({Key key, this.title = 'AuthenticationPage'})
      : super(key: key);
  static const routeName = "/AuthenticationPage";
  @override
  AuthenticationPageState createState() => AuthenticationPageState();
}

class AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
