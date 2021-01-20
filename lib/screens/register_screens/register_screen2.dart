import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/background_container_widget.dart';
import 'package:lunia/screens/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/screens/comom_widgets/custom_texts.dart';

class RegisterScreen2 extends StatefulWidget {
  @override
  _RegisterScreen2State createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool hidePassword = true;

  @override

  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          BackGroundContainerWidget(
            heightporcentage: 0.4,
          ),
          Center(
            child: ClipPath(
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
                                child: SvgPicture.asset(
                                    'assets/login/estrelas.svg'),
                              )
                            ],
                          ),
                          CustomTextHint(
                            text: 'Seu e-mail',
                          ),
                          SizedBox(height: height * 0.015,),
                          CustomroundedContainer(
                            child: TextFormField(
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: "Ex.: exemplo@gmail.com...",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.05,),
                          CustomTextHint(text: "Crie sua senha"),
                          SizedBox(height: height * 0.015,),
                          CustomroundedContainer(
                            child: Column(
                              children: [
                                TextFormField(
                                  validator: (password) {
                                    if (password.isEmpty) {
                                      return 'Campo senha vazio!';
                                    }
                                    if (password.length < 9) {
                                      return 'No mínimo 8 carácteres!';
                                    }
                                    return null;
                                  },
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                      hintText: "Digite sua senha",
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 15, horizontal: 15),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            hidePassword = !hidePassword;
                                          });
                                        },
                                        child: hidePassword? Container(
                                          child: SvgPicture.asset(
                                            'assets/login/iconEye.svg',
                                            width: 2,
                                            height: 2,
                                          ),
                                        ):
                                        Container(
                                          child: SvgPicture.asset(
                                            'assets/login/iconEyeOculto.svg',
                                            width: 2,
                                            height: 2,
                                          ),
                                        ),
                                      )),
                                  obscureText: hidePassword,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
