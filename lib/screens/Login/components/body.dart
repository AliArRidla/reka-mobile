import 'package:flutter/material.dart';
// import 'package:planmaintance/Screens/Login/components/background.dart';
// import 'package:planmaintance/Screens/Signup/signup_screen.dart';
// import 'package:planmaintance/components/already_have_an_account_acheck.dart';
// import 'package:planmaintance/components/rounded_button.dart';
// import 'package:planmaintance/components/rounded_input_field.dart';
// import 'package:planmaintance/components/rounded_password_field.dart';
// import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../Welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              "Log In",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 40,fontFamily: 'Larsseit'),
            ),
            Text(
              "What's your Email?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
            ),
            SizedBox(height: size.height * 0.03),
            // AlreadyHaveAnAccountCheck(
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
