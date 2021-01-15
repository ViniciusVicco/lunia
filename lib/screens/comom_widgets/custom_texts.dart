import 'package:flutter/material.dart';

class CustomTextHint extends StatelessWidget {
  final String text;
  final double size;

  CustomTextHint({@required this.text, this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size?? 14,
        color: Colors.grey[500],
      ),
    );
  }
}

class CustomTextTittle extends StatelessWidget {
  final String text;
  CustomTextTittle({@required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 30, color: Colors.grey[700], fontWeight: FontWeight.w500),
    );
  }
}
