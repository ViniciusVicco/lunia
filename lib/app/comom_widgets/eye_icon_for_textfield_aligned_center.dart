import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EyeIconForTextFieldAlignedCenter extends StatelessWidget {
  final bool isObscured;

  EyeIconForTextFieldAlignedCenter({this.isObscured});
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
      ),
      child: isObscured? SvgPicture.asset('assets/login_register/iconEyeAlignedCenter.svg') : SvgPicture.asset('assets/login_register/iconEyeOcultoAlignedCenter.svg'),
    );
  }
}
