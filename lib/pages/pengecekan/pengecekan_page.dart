import 'package:flutter/material.dart';
import 'package:reka/models/machine_model.dart';
import 'package:reka/theme.dart';

class PengecekanPage extends StatefulWidget {
  final MachineModel machine;
  PengecekanPage(this.machine);
  @override
  State<PengecekanPage> createState() => _PengecekanPageState();
}

class _PengecekanPageState extends State<PengecekanPage> {
  // const PengecekanPage({Key? key}) : super(key: key);
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
                  "Mesin Laser",
                  style: headingTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Silahkan isi parameter mesin yang akan di check",
                    style: tigaTextStyle,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                          // child: TextFormField(
                          //   decoration: InputDecoration.collapsed(
                          //     hintText: "Weekly",
                          //     fillColor: primaryColor,
                          //   ),
                          // ),
                          child: DropdownButtonFormField(
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_downward),
                            decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                            ),
                            elevation: 16,
                            style: textButtonTextStyle,
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'ThreeMonthly',
                              'Monthly',
                              'Weekly',
                              'Daily'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget manualBookButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/manual-books");
          },
          style: TextButton.styleFrom(
            backgroundColor: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.library_books,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Manual Books",
                style: buttonTextStyle,
              ),
            ],
          ),
        ),
      );
    }

    Widget checkInButton() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: EdgeInsets.only(top: 15, bottom: 50),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            "Continue",
            style: buttonTextStyle,
          ),
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
            Spacer(),
            manualBookButton(),
            checkInButton(),
          ],
        ),
      ),
    );
  }
}
