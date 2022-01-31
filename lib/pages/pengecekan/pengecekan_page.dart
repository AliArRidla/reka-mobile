import 'package:flutter/material.dart';
import 'package:reka/models/machine_model.dart';
import 'package:reka/theme.dart';
import 'package:reka/widgets/field_pengecekan.dart';

class PengecekanPage extends StatefulWidget {
  final MachineModel machine;
  PengecekanPage(this.machine);
  @override
  State<PengecekanPage> createState() => _PengecekanPageState();
}

class _PengecekanPageState extends State<PengecekanPage> {
  // const PengecekanPage({Key? key}) : super(key: key);
  // String dropdownValue = 'Ok';
  

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Ok';
    Widget header() {
      return Container(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              // "Mesin Laser",
              widget.machine.nama_mesin,
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

    return Scaffold(
      // extendBodyBehindAppBar: true,
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
            header(),
            Expanded(
              child: Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: widget.machine.parameters
                          .length, // hitung berapa banyak parameters yang dimiliki oleh mesin ini
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // widget.machine.parameters.map
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  // widget.machine.parameters.asMap().,
                                  '\Check ${widget.machine.parameters.map((e) => e.nama_parameter).elementAt(index)}',
                                  // 'Type Check',
                                  style: duaTextStyle,
                                ),
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
                                        
                                        child: DropdownButtonFormField(
                                          value: dropdownValue,
                                          icon: const Icon(Icons.arrow_downward),
                                          decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
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
                                            'Ok',
                                            'Not Ok'
                                          ].map<DropdownMenuItem<String>>(
                                              (String value) {
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
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
