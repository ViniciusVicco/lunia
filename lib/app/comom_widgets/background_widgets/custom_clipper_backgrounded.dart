import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class CustomClipperBackgrounded extends StatelessWidget {
  final Widget child;
  final double maxHeight;
  final FractionalOffset fractionalOffset;
  CustomClipperBackgrounded(
      {this.child, this.maxHeight, this.fractionalOffset});
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Stack(children: [
      Column(
        children: [
          Container(
            height: height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment:
                        fractionalOffset ?? FractionalOffset.bottomCenter,
                    image: AssetImage('assets/comom/fundo.png'))),
          ),
        ],
      ),
      ClipPath(
        clipper: WaveClipperTwo(),
        child: Container(
          height: maxHeight ?? height * 0.7,
          color: Colors.white,
          //Clipar este cara aqui
        ),
      ),
      child,
    ]);
  }
}
