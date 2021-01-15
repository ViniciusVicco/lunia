import 'package:flutter/material.dart';

class CustomroundedContainer extends StatelessWidget {
  final Color cor;
  final Widget child;
  CustomroundedContainer({this.cor, this.child});
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: cor!=null ? cor : Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
