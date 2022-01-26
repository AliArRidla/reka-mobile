import 'package:flutter/material.dart';
import 'package:reka/providers/auth_provider.dart';
import 'package:reka/theme.dart';
import 'package:provider/provider.dart';
import 'package:reka/widgets/button_loading.dart';

class SignInPage extends StatefulWidget {
  // const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // print(emailController);
    handleSignIn() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: secondaryColor,
            content: Text(
              'Gagal Login!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }

      setState(() {
        isLoading = false;
      });
    }

    // Widget text header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // ini kenapa tidak berfungsi ??
          children: [
            Text(
              'Log In',
              style: satuTextStyle,
            ),
            SizedBox(),
            Text(
              'Please sign in to continue',
              style: tigaTextStyle,
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Addres',
              style: duaTextStyle,
            ),
            SizedBox(),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: fieldColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset("assets/images/alternate_email.png"),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration.collapsed(
                          hintText: "Your email Address",
                          fillColor: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Password', style: duaTextStyle),
            SizedBox(),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: fieldColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/lock.png",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration.collapsed(
                          hintText: "Your Password",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          // onPressed: () {
          //   Navigator.pushNamed(context, "/home");
          // },
          onPressed: handleSignIn,
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff2f539d),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Login",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Center(
            child: Text(
          "please contact admin \nif you can't have account",
          textAlign: TextAlign.center,
          style: tigaTextStyle,
        )),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultmargin,
          ),
          child: Column(
            children: [
              SizedBox(),
              header(),
              SizedBox(),
              Expanded(
                  child: Column(
                children: [
                  emailInput(),
                  passwordInput(),
                  isLoading ? LoadingButton() : signInButton(),
                  Spacer(),
                  footer(),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
