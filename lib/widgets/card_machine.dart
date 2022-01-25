import 'package:flutter/material.dart';
import 'package:reka/models/machine_model.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/theme.dart';

class CardMachine extends StatelessWidget {
  final MachineModel machine;
  CardMachine(this.machine);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PengecekanPage(machine),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(8),
        height: 127,
        decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Image(
                  image: AssetImage("assets/images/mesins/machine-1.png"),
                ),
              ),
              Text(
                '${machine.nama_mesin}',
                style: duaTextStyle.copyWith(
                    color: primaryColor, fontWeight: FontWeight.w500),
              ),
              Text(
                '\$${machine.type_mesin}',
                style: tigaTextStyle.copyWith(color: secondaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
