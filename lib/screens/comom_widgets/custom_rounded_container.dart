import 'package:flutter/material.dart';

class CustomroundedContainer extends StatelessWidget {
  final Color cor;
  final Widget child;
  final double height;
  final double width;
  CustomroundedContainer({this.cor, this.child, this.width, this.height});
  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
          border: Border.all(color: cor!=null ? cor : Colors.black),
          borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
