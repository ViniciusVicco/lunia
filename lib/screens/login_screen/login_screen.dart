import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/background_container_widget.dart';
import 'package:lunia/screens/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/screens/comom_widgets/custom_texts.dart';
import 'package:lunia/screens/comom_widgets/form_field_widget.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final Color selectedColor = Color(0xff825904);


    return Scaffold(
      drawer: Drawer(

      ),
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          BackGroundContainerWidget(
            heightporcentage: 0.40,
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
                              CustomTextTittle(text: "Logue",),
                              Container(
                                child: SvgPicture.asset(
                                    'assets/login/estrelas.svg'),
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
                          CustomroundedContainer(

                            child: TextFormField(
                              maxLines: 1,
                              validator: (email) {
                                if (email.isEmpty) {
                                  return 'Campo e-mail vazio!';
                                }
                                if (!email.contains('@')) {
                                  return 'E-mail incorreto!';
                                }
                                if (email.length < 9) {
                                  return 'E-mail inválido!';
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: "Digite seu e-mail",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
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
//                                TextFormField(
//                                  validator: (password) {
//                                    if (password.isEmpty) {
//                                      return 'Campo senha vazio!';
//                                    }
//                                    if (password.length < 9) {
//                                      return 'No mínimo 8 carácteres!';
//                                    }
//                                    return null;
//                                  },
//                                  style: TextStyle(
//                                    color: Colors.black,
//                                  ),
//                                  decoration: InputDecoration(
//                                      hintText: "Digite sua senha",
//                                      border: InputBorder.none,
//                                      contentPadding: EdgeInsets.symmetric(
//                                          vertical: 15, horizontal: 15),
//                                      suffixIcon: GestureDetector(
//                                        onTap: () {
//                                          setState(() {
//                                            hidePassword = !hidePassword;
//                                          });
//                                        },
//                                        child: hidePassword? Container(
//                                          child: SvgPicture.asset(
//                                            'assets/login/iconEye.svg',
//                                            width: 2,
//                                            height: 2,
//                                          ),
//                                        ):
//                                        Container(
//                                          child: SvgPicture.asset(
//                                            'assets/login/iconEyeOculto.svg',
//                                            width: 2,
//                                            height: 2,
//                                          ),
//                                        ),
//                                      )),
//                                  obscureText: hidePassword,
//                                ),
                            CustomroundedContainer(height: height * 0.07,width: width,),
                              CustomTextField(
                              validator: (password) {
                                  if (password.isEmpty) {
                                    return 'Campo senha vazio!';
                                  }
                                  if (password.length < 9) {
                                    return 'No mínimo 8 carácteres!';
                                  }
                                  return null;
                                },

                                hint: "Oi",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                            children: [
                              Text("Não tem uma conta ?"),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed('/register1');
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
                                width: width * 0.05,
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
                                          'assets/login/loginIcon.svg')),
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
        ],
      ),
    );
  }
}