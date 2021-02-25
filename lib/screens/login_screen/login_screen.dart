import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/background_container_widget.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/custom_clipper.dart';
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
      drawer: Drawer(),
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: ClipPath(

        child: Container(

          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            alignment: FractionalOffset.bottomCenter,
                            image: AssetImage('assets/comom/fundo.png')
                        )
                    ),
                  ),
                ],
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: height*0.7,
                  color: Colors.white,
                  //Clipar este cara aqui
                ),
              ),
              Center(
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
                            Stack(
                              children: [
                                CustomroundedContainer(
                                  height: height * 0.07,
                                  width: width,
                                ),
                                CustomTextField(
                                  hint: 'seuEmail@email.com',
                                  errorText: 'E-mail inválido',
                                  validator: (email) {
                                    if (email.isEmpty) {
                                      return 'Campo Vazio!';
                                    }
                                    if (!email.contains('@')&&(!email.contains('.'))) {
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
                                  hint: "********",
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
                              height: height * 0.02,
                            ),
                            Row(
                              children: [
                                Text("Não tem uma conta ?"),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/register1');
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
            ],
          ),
        ),
      ),
    );
  }
}
