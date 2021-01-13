import 'package:flutter/material.dart';
import 'package:lunia/screens/comomWidgets/wave_widget.dart';

class BackGroundContainerWidget extends StatelessWidget {
  final double heightporcentage;
  BackGroundContainerWidget({@required this.heightporcentage});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Align(
      heightFactor: height * 0.40,
      alignment: Alignment.bottomCenter,
      child: Stack(
        children: [
          Container(
            height: height* 0.4,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/comom/fundo.png'),
                    fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                )
            ),
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
