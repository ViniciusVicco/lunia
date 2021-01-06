import 'package:flutter/material.dart';
import 'package:lunia/screens/comomWidgets/wave_widget.dart';
class CustomBackGround extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    final size = MediaQuery.of(context).size;
    return Container(
      height: height * 0.3902,
      width: width,
      child: SizedBox(
        child: ClipRect(
          child: Align(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.33,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/comom/fundo.png'),
                      fit: BoxFit.cover)
              ),
              child: WaveWidget(
                size: size,
                yOffset: size.height / 3.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
