import 'package:flutter/material.dart';
// import 'package:planmaintance/Screens/Welcome/components/body.dart';
import 'package:reka/screens/Welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
