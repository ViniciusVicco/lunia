import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lunia/app/comom_widgets/background_widgets/custom_clipper_backgrounded.dart';
import 'package:lunia/app/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/app/comom_widgets/custom_texts.dart';
import 'package:lunia/app/comom_widgets/eye_icon_for_textfield_aligned_top.dart';
import 'package:lunia/app/comom_widgets/form_field_widget.dart';
import 'package:lunia/app/modules/register/register_module.dart';
import 'package:lunia/app/modules/register/register_page.dart';
import 'package:lunia/constrants/dart/device.dart';

class AuthenticationPage extends StatefulWidget {
  final String title;
  const AuthenticationPage({Key key, this.title = 'AuthenticationPage'})
      : super(key: key);
  static const routeName = "/AuthenticationPage";

  @override
  AuthenticationPageState createState() => AuthenticationPageState();
}

class AuthenticationPageState extends State<AuthenticationPage> {
  final Color selectedColor = Color(0xff825904);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    final height = Device.height;
    final width = Device.width;
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          drawer: Drawer(),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: ClipPath(
              child: Container(
                child: CustomClipperBackgrounded(
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
                                      text: "Logue",
                                    ),
                                    Container(
                                      child: SvgPicture.asset(
                                          'assets/login_register/estrelas.svg'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.03,
                                ),
                                CustomTextHint(text: "Seu e-mail"),
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
                                      topPadding: 0,
                                      hint: 'seuEmail@email.com',
                                      errorText: 'E-mail inválido',
                                      validator: (email) {
                                        if (email.isEmpty) {
                                          return 'Campo Vazio!';
                                        }
                                        if (!email.contains('@') &&
                                            (!email.contains('.'))) {
                                          return 'E-mail incorreto!';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                CustomTextHint(text: "Senha"),
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
                                      hidePassword: hidePassword,
                                      sulfixIcon: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              hidePassword = !hidePassword;
                                            });
                                          },
                                          child: EyeIconForTextFieldAlignedTop(
                                            isObscured: hidePassword,
                                          )),
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
                                Row(
                                  children: [
                                    CustomTextHint(text: "Não tem uma conta ?"),
                                    SizedBox(
                                      width: width * 0.01,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(
                                            RegisterModule.routeName +
                                                RegisterPage.routeName);
                                      },
                                      child: Text(
                                        "Cadastre-se",
                                        style: TextStyle(
                                          color: selectedColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.08,
                                    ),
                                    InkWell(
                                      child: GestureDetector(
                                        onTap: () {
                                          if (formKey.currentState.validate()) {
                                            print("Formulário Validado");
                                          }
                                        },
                                        child: Container(
                                            child: SvgPicture.asset(
                                                'assets/login_register/loginIcon.svg')),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.05,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
