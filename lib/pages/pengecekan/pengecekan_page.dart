import 'package:flutter/material.dart';
import 'package:reka/theme.dart';

class PengecekanPage extends StatelessWidget {
  const PengecekanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget typeCheck() {
      return Container(
        margin: EdgeInsets.only(top: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Type Check',
              style: duaTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
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
                    // Image.asset("assets/images/alternate_email.png"),
                    Icon(
                      Icons.date_range,
                      color: secondaryTextColor,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: "Weekly",
                          fillColor: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Type Check',
              style: duaTextStyle,
            ),
            SizedBox(
              height: 8,
            ),
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
                    // Image.asset("assets/images/alternate_email.png"),
                    Icon(
                      Icons.date_range,
                      color: secondaryTextColor,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: "Weekly",
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
          children: [typeCheck()],
        ),
      ),
    );
  }
}
