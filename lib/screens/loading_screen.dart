import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reka/screens/splash/splash_screen.dart';
import 'package:reka/size_config.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  static String routeName = "/loading";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initstate() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, SplashScreen.routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Image(
          image: AssetImage("assets/images/logo.png"),
        ),
      ),
    );
  }
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Container(
  //       child: Center(
  //         child: InkWell(
  //           onTap: () {
  //             // Navigator.pushNamed(context, SplashScreen.routeName);
  //           },
  //           child: Image(
  //             image: AssetImage("assets/images/logo.png"),
  //             width: 100,
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
