import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lunia/constrants/dart/device.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/custom_clipper_backgrounded.dart';
import 'package:lunia/screens/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/screens/comom_widgets/custom_texts.dart';
import 'package:lunia/screens/comom_widgets/eye_icon_for_textfield_aligned_top.dart';
import 'package:lunia/screens/comom_widgets/form_field_widget.dart';

class RegisterScreen2 extends StatefulWidget {
  @override
  _RegisterScreen2State createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool hidePassword = true;
  bool hidePassword2 = true;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: CustomClipperBackgrounded(
          maxHeightporcentage: height * 0.85,
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            Container(
              width: width * 0.8,
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CustomTextTittle(
                          text: 'Cadastre-se',
                        ),
                        Container(
                          child:
                              SvgPicture.asset('assets/login_register/estrelas.svg'),
                        )
                      ],
                    ),
                    CustomTextHint(
                      text: 'Seu e-mail',
                    ),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    CustomroundedContainer(
                      height: height * 0.07,
                      child: TextFormField(
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          hintText: "Ex.: exemplo@gmail.com...",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    CustomTextHint(text: "Crie sua senha"),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    Stack(
                      children: [
                        CustomroundedContainer(
                          height: height * 0.07,
                          width: width,
                        ),
                        CustomTextField(
                          topPadding: 5,
                          hidePassword: hidePassword,
                          sulfixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  hidePassword = !hidePassword;
                                });
                              },
                              child: EyeIconForTextFieldAlignedTop(isObscured: hidePassword,)
                          ),
                          hint: "Digite sua senha",
                          errorText: 'No mínimo 8 carácteres!',
                          validator: (password) {
                            if (password.isEmpty) {
                              return 'Campo senha vazio!';
                            }
                            if (password.length < 9) {
                              return 'No mínimo 8 carácteres!';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    CustomTextHint(text: "Confirme sua senha"),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Stack(
                      children: [
                        CustomroundedContainer(
                          height: height * 0.07,
                          width: width,
                        ),
                        CustomTextField(
                          topPadding: 5,
                          hidePassword: hidePassword2,
                          sulfixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  hidePassword2 = !hidePassword2;
                                });
                              },
                              child: EyeIconForTextFieldAlignedTop(isObscured: hidePassword2,)
                          ),
                          hint: "Confirme sua senha",
                          errorText: 'No mínimo 8 carácteres!',
                          validator: (password) {
                            if (password.isEmpty) {
                              return 'Campo senha vazio!';
                            }
                            if (password.length < 9) {
                              return 'No mínimo 8 carácteres!';
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    Text("*No mínimo 8 caractéres", style: TextStyle(color: Theme.of(context).accentColor),),
                    Text("*Para Senhas fortes, use letras maiusculas e \n minúsculas, números e símbolos", style: TextStyle(color: Theme.of(context).accentColor),),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(child: SvgPicture.asset('assets/comom/btnRetornar.svg'), onTap: () {Navigator.of(context).pop();},),
                        GestureDetector(child: SvgPicture.asset('assets/comom/btnProsseguir.svg'), onTap: () {Navigator.of(context).pushNamed('/knowledge_start_screen');},),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
