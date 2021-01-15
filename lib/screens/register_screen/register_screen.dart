import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/background_container_widget.dart';
import 'package:lunia/screens/comom_widgets/custom_rounded_container.dart';
import 'package:lunia/screens/comom_widgets/custom_texts.dart';
import 'package:lunia/screens/comom_widgets/rounded_container.dart';

class RegisterScreen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final Color selectedColor = Color(0xff825904);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
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
                          SizedBox(
                            height: height * 0.02,
                          ),
                          CustomTextHint(
                            text: "Como você quer ser chamade?",
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          CustomroundedContainer(
                            child: TextFormField(
                              style: TextStyle(color: selectedColor),
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                                hintText: "Insira um nome ou apelido...",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          CustomTextHint(
                            text: "Seu Pronome",
                          ),
                          SizedBox(
                            height: height * 0.012,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    print("Ela escolhido");
                                  },
                                  child: RoundedContainer(
                                    text: "Ela/a",
                                    radius: 20,
                                    isBorded: true,
                                    isLeft: true,
                                  )),
                              GestureDetector(
                                  onTap: () {
                                    print("Ele escolhido");
                                  },
                                  child: RoundedContainer(
                                    text: "Ele/o",
                                    radius: 20,
                                    isBorded: false,
                                    isLeft: false,
                                  )),
                              GestureDetector(
                                  onTap: () {
                                    print("Elu escolhido");
                                  },
                                  child: RoundedContainer(
                                    text: "Elu/ê",
                                    radius: 20,
                                    isBorded: true,
                                    isLeft: false,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          CustomTextHint(text: "Data do seu nascimento"),
                          SizedBox(
                            height: height * 0.012,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: width * 0.34,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                  color: selectedColor.withOpacity(0.4)),
                              color: selectedColor.withOpacity(0.4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "23/12/2021",
                                  style: TextStyle(color: selectedColor),
                                ),
                                IconButton(
                                    icon: Icon(
                                      Icons.date_range,
                                      color: selectedColor,
                                    ),
                                    onPressed: null)
                              ],
                            ),
                          ),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Row(
                            children: [
                              CustomTextHint(text: "Já tem uma conta ? "),
                              GestureDetector(
                                  child: Text(
                                "Logue Aqui",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: selectedColor,
                                ),
                              )),
                              Container(
                                child: SvgPicture.asset('assets/comom/btnProsseguir.svg'),
                              )
                              
                            ],
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
