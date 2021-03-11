import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final String text;
  final double radius;
  final bool isLeft;
  final bool isBorded;

  const RoundedContainer(
      {@required this.text, @required this.radius, this.isLeft, this.isBorded});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      child: Text(text),
      height: height * 0.075,
      width: width * 0.16,
      decoration: isBorded
          ? BoxDecoration(

              border: Border.all(width: 1),
              borderRadius: isLeft
                  ? BorderRadius.only(
                      topLeft: Radius.circular(radius),
                      bottomLeft: Radius.circular(radius))
                  : BorderRadius.only(
                      topRight: Radius.circular(radius),
                      bottomRight: Radius.circular(radius)))
          : BoxDecoration(
              border: Border(
              top: BorderSide(width: 1),
              bottom: BorderSide(width: 1),
            )),
    );
  }
}
