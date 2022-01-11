import 'package:flutter/material.dart';
import 'package:reka/screens/Login/login_screen.dart';
// import 'package:reka-mobile/screens/Login/login_screen.dart';
// import 'package:planmaintance/Screens/Signup/signup_screen.dart';
// import 'package:planmaintance/Screens/Welcome/components/background.dart';
// import 'package:planmaintance/components/rounded_button.dart';

import '../../../components/rounded_button.dart';
import '../../Login/components/background.dart';
// import 'package:planmaintance/constants.dart';
// import 'package:planmaintance/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    var key2 = null;
    return Background(
      key: key2,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "icons/images_2.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "WELCOME TO PLAIN MANAGEMENT APLICATION",
              style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 32.5, fontFamily: 'Larsseit'),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "L O G I N",
              // press: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return LoginScreen();
              //       },
              //     ),
              //   );
              // },
            ),
          ],
        ),
      ),
    );
  }
}
