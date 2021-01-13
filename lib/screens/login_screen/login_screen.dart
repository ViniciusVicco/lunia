import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/screens/comomWidgets/background_widget.dart';
import 'package:lunia/screens/comomWidgets/wave_widget.dart';
import 'package:lunia/screens/comombackGround/background_container_widget.dart';

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
    final size = MediaQuery.of(context).size;


       return Scaffold(
         resizeToAvoidBottomPadding: false,
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                BackGroundContainerWidget(heightporcentage: 0.40,),
                Center(
                  child: ClipPath(
                      child: Column(
                        children: [
                          SizedBox(height: height*0.05,),
                          Container(
                            width: width * 0.8,
                            child: Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Logue",
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.grey[700],
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Container(
                                        child: SvgPicture.asset('assets/login/estrelas.svg'),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height * 0.03,
                                  ),
                                  Text(
                                    "Seu e-mail",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: TextFormField(
                                      maxLines: 1,
                                      validator: (email){
                                        if(email.isEmpty){
                                          return 'Campo e-mail vazio!';
                                        }
                                        if(!email.contains('@')){
                                          return 'E-mail incorreto!';
                                        }
                                        if(email.length < 9){
                                          return 'E-mail inválido!';
                                        }
                                        return null;
                                      },
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        alignLabelWithHint: true,
                                        hintText: "NoahCeda@gmail.com",
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.all(10),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 0.025,
                                  ),
                                  Text(
                                    "Senha",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.circular(10)),
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          validator: (password){
                                            if(password.isEmpty){
                                              return 'Campo senha vazio!';
                                            }
                                            if(password.length < 9){
                                              return 'No mínimo 8 carácteres!';
                                            }
                                            return null;
                                          },
                                          style: TextStyle(
                                            color: Colors.black,
                                          ),
                                          decoration: InputDecoration(
                                              hintText: "*******",
                                              border: InputBorder.none,
                                              contentPadding:
                                                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                                          suffixIcon: IconButton(
                                            onPressed: (){
                                              setState(() {
                                                hidePassword = !hidePassword;
                                              });
                                            },
                                            icon: hidePassword?  Icon(Icons.remove_red_eye, color: Color(0xFFC18B19)):  Icon(Icons.remove_red_eye_sharp, color: Color(0xFFC18B19)),
                                          )
                                          ),
                                          obscureText: hidePassword,
                                        ),

                                      ],
                                    ),
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
                                          print("Segue para tela de cadastro");
                                        },
                                        child: Text(
                                          "Cadastre-se",
                                          style: TextStyle(
                                            color: Colors.orange[700],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: width * 0.05,
                                      ),
                                      InkWell(
                                        child: GestureDetector(
                                          onTap: (){
                                            if(formKey.currentState.validate()){
                                              print("Formulário Validado");
                                            }
                                          },
                                          child: Container(
                                              child: SvgPicture.asset('assets/login/loginIcon.svg')
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: height*0.05,
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

//Image(
//width: width*0.1,
//height: height*0.1,
//image: NetworkImage("https://clipartion.com/wp-content/uploads/2015/11/shooting-star-clip-art-black-and-white-free1.png"),
//)
