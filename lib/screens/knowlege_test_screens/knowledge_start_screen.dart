import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lunia/constrants/dart/device.dart';
import 'package:lunia/screens/comom_widgets/background_widgets/custom_clipper_backgrounded.dart';
import 'package:lunia/screens/comom_widgets/custom_texts.dart';

class KnowledgeStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Device.init(context);
    return Scaffold(
      body: CustomClipperBackgrounded(
        fractionalOffset: FractionalOffset.topCenter,
        maxHeight: 655,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: Device.height * 0.03),
              Container(
                width: Device.width * 0.8,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: CustomTextTittle(
                        text: 'Teste de',
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: CustomTextTittle(
                        text: 'Conhecimento',
                      ),
                    ),
                    SizedBox(
                      height: Device.height * 0.025,
                    ),
                    Container(
                      child: SvgPicture.asset(
                          'assets/knowledge_test/knowledgeTestArt.svg'),
                    ),
                    SizedBox(
                      height: Device.height * 0.03,
                    ),
                    RichText(
                        text: TextSpan(
                            text:
                                "Vamos te perguntar algumas coisas para medir seu conhecimento e a partir disso",
                            style: TextStyle(
                                color: Colors.grey[600].withOpacity(0.9), fontSize: 18),
                            children: <TextSpan>[
                          TextSpan(
                              text:
                                  ' vamos liberar as questões de acordo com suas respostas!',
                              style: TextStyle(
                                  color: Colors.grey[800], fontSize: 18))
                        ])),
                    SizedBox(
                      height: Device.height * 0.04,
                    ),
                    FlatButton(

                      minWidth: Device.width * 0.8,
                      height: Device.height * 0.075,
                      onPressed: () {},
                      color: Color(0xffC18B19),
                        child: Text("Fazer o teste", style: TextStyle(fontSize: 18, color: Color(0xff5E0D00)),),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20))
                    ),
                    SizedBox(
                      height: Device.height * 0.025,
                    ),
                    FlatButton(
                        minWidth: Device.width * 0.8,
                        height: Device.height * 0.075,
                        onPressed: () {},
                        color: Color(0xffECE2C3),
                        child: Text("Sou iniciante", style: TextStyle(fontSize: 18, color: Color(0xff825904)),),
                        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20))
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
