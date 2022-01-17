import 'package:flutter/material.dart';
import 'package:reka/theme.dart';

class ManualBookPage extends StatefulWidget {
  @override
  State<ManualBookPage> createState() => _ManualBookPageState();
}

class _ManualBookPageState extends State<ManualBookPage> {
  // const ManualBookPage({Key? key}) : super(key: key);
  String dropdownValue = 'Weekly';

  @override
  Widget build(BuildContext context) {
    Widget typeCheck() {
      return Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Model RM541",
                  style: duaTextStyle.copyWith(color: secondaryColor),
                ),
                Text(
                  "Mesin Laser",
                  style: headingTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Panduan buku manual mesin",
                    style: tigaTextStyle,
                  ),
                ),
              ],
            ),
            // url video
            // heading
            // subheading
          ],
        ),
      );
    }

    Widget downloadButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15, bottom: 50),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryTextColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.download,color: secondaryTextColor,),
              Text(
                "Download",
                style: buttonTextStyle,
              ),
            ],
          ),
        ),
      );
    }

    Widget playButton() {
      return Container(
        height: 153,
        margin: EdgeInsets.only(
          top: 15,
        ),
        decoration: BoxDecoration(
          color: Color(0xffff5656),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Icon(Icons.play_arrow,size: 40,color: Colors.white,),
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
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
            typeCheck(),
            // Spacer(),
            playButton(),
            // manualBookButton(),
            downloadButton(),
          ],
        ),
      ),
    );
  }
}
