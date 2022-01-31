import 'package:flutter/material.dart';
import 'package:reka/theme.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // "Mesin Laser",
              "Pengaturan",
              style: headingTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Silahkan isi parameter mesin yang akan di check",
                // widget.machine.id.toString(),
                style: tigaTextStyle,
              ),
            ),
          ],
        ),
      );
    }

    Widget signOutButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          // onPressed: () {
          //   Navigator.pushNamed(context, "/home");
          // },
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Logout",
            style: buttonTextStyle,
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            header(),
            signOutButton(),
            Container(
              child: Text("ini settings"),
            ),
          ],
        ),
      ),
    );
  }
}
