import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lunia/app/modules/home/home_store.dart';
import 'package:lunia/constrants/dart/device.dart';
import 'modules/authentication/authentication_module.dart';
import 'modules/authentication/authentication_page.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);
  static const routeName = "/HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _colorAnimation;

  @override
  void initState() {
    controller.insertTest();
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 2500),
      vsync: this,
    );
    _colorAnimation = ColorTween(begin: Colors.white, end: Colors.red)
        .animate(_animationController);
    _animationController.forward();
    _animationController.addListener(() {
      print(_animationController.value);
      print(_colorAnimation.value);
      if (_animationController.value >= 1) {
        Modular.to.navigate(
            AuthenticationModule.routeName + AuthenticationPage.routeName
            //RegisterModule.routeName + RegisterPageSecond.routeName
            );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Device.init(context);
    return AnimatedBuilder(
        animation: _animationController,
        builder: (BuildContext context, _) {
          return Scaffold(
            body: Center(
              child: Container(
                child: Transform.scale(
                    scale: 0.5 + _animationController.value,
                    child: SvgPicture.asset(
                        "assets/initial_page/initialScreen.svg")),
              ),
            ),
          );
        });
  }
}
