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
  String dropdownValue = 'Daily';

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
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3, // hitung berapa banyak parameters yang dimiliki oleh mesin ini 
                  itemBuilder: (context, index) {
                    return FieldPengecekan();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
