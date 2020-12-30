import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/screens/comomWidgets/custom_background_widget.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Center(
                child: Container(
                  width: width * 0.8,
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
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: "NoahCeda@gmail.com",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
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
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          decoration: InputDecoration(
                              hintText: "*******",
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//                          suffixIcon: GestureDetector(
//                            onTap: (){
//                              print("Olho");
//                            },
//                            child: Container(
//                              child: SvgPicture.asset('assets/login/iconEye.svg', width: 2, height: 2,),
//                            ),
//                          )
                          suffixIcon: IconButton(
                            icon: Icon(Icons.remove_red_eye, color: Color(0xFFC18B19)),

                          )
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Row(
                        children: [
                          Text("Não tem uma conta ?"),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          Text(
                            "Cadastre-se",
                            style: TextStyle(
                              color: Colors.orange[700],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          InkWell(
                            child: GestureDetector(
                              onTap: (){
                                print("Teste");
                              },
                              child: Container(
                                  child: SvgPicture.asset('assets/login/loginIcon.svg')
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        CustomBackGround()
      ],
    );
  }
}

//Image(
//width: width*0.1,
//height: height*0.1,
//image: NetworkImage("https://clipartion.com/wp-content/uploads/2015/11/shooting-star-clip-art-black-and-white-free1.png"),
//)
