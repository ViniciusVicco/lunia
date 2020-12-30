import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class CustomBackGround extends StatelessWidget {
  @override
  final Scaffold scaffold;
  CustomBackGround({this.scaffold});
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,

        //  child: SvgPicture.asset('assets/comom/fundo.svg', )),
      child: ListView(
        children: [
         SizedBox(
           height: height*0.54,
         ),
        ClipRect(
            child: Align(
              alignment: Alignment.bottomCenter,
                heightFactor: 0.33,
                child: SvgPicture.asset('assets/comom/fundo.svg', ))),
        ],
      ),
    );
  }
}
