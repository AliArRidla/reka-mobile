import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reka/models/user_model.dart';
import 'package:reka/providers/auth_provider.dart';
import 'package:reka/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    Widget fotoProfile() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 30),
        width: 70,
        height: 70,
        child: CircleAvatar(
          backgroundColor: Colors.brown.shade800,
          child: const Text('AH'),
        ),
      );
    }

    Widget namaProfile() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          style: TextButton.styleFrom(
            backgroundColor: fieldColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nama : ",
                style: textButtonTextStyle.copyWith(color: secondaryColor),
              ),
              Text(
                user.name,
                style: textButtonTextStyle.copyWith(color: secondaryTextColor),
              ),
            ],
          ),
        ),
      );
    }

    Widget emailProfile() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          style: TextButton.styleFrom(
            backgroundColor: fieldColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email nya :',
                style: textButtonTextStyle.copyWith(color: secondaryColor),
              ),
              Text(
                user.email,
                style: textButtonTextStyle.copyWith(color: secondaryTextColor),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 80,
          child: Center(
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Builder(
          builder: (BuildContext context) {
            return ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0.0),
              ),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: primaryTextColor,
                size: 35,
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image(
              image: AssetImage("assets/images/profile.png"),
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Column(
          children: [
            fotoProfile(),
            namaProfile(),
            emailProfile(),
          ],
        ),
      ),
    );
  }
}
