import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeIconForTextFieldAlignedTop extends StatelessWidget {
  final bool isObscured;

  EyeIconForTextFieldAlignedTop({this.isObscured});
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      child: isObscured? SvgPicture.asset('assets/login_register/iconEye.svg') : SvgPicture.asset('assets/login_register/iconEyeOculto.svg'),
    );
  }
}
