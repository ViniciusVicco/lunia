import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeIconForTextField extends StatelessWidget {
  final bool isObscured;
  EyeIconForTextField({this.isObscured});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: isObscured? SvgPicture.asset('assets/login/iconEye.svg') : SvgPicture.asset('assets/login/iconEyeOculto.svg'),
    );
  }
}
