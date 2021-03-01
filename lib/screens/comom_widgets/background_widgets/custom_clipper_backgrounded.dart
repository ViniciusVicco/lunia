import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CustomClipperBackgrounded extends StatelessWidget {
  final Widget child;
  final double maxHeightporcentage;
  CustomClipperBackgrounded({this.child, this.maxHeightporcentage});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Column(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: FractionalOffset.bottomCenter,
                    image: AssetImage('assets/comom/fundo.png'))),
          ),
        ],
      ),
      ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          height: maxHeightporcentage ?? height * 0.7,
          color: Colors.white,
          //Clipar este cara aqui
        ),
      ),
      child,
    ]);
  }
}
