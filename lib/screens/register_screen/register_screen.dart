import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/background_container_widget.dart';
import 'package:lunia/screens/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/screens/comom_widgets/custom_texts.dart';
class RegisterScreen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
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
                    width: width* 0.8,
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomTextTittle(text: 'Cadastre-se',),
                              Container(
                                child: SvgPicture.asset(
                                  'assets/login/estrelas.svg'
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: height* 0.04,),
                          CustomTextHint(text: "Como você quer ser chamade?",),
                          SizedBox(height: height * 0.01,),
                          CustomroundedContainer(
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: "Insira um nome ou apelido...",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),

                            ),

                          ),
                          SizedBox(height: height * 0.01,),

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
