import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reka/models/user_model.dart';
import 'package:reka/providers/auth_provider.dart';
import 'package:reka/providers/machine_provider.dart';
import 'package:reka/theme.dart';
import 'package:reka/widgets/card_machine.dart';

class HomePage extends StatelessWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    MachineProvider machineProvider = Provider.of<MachineProvider>(context);
    Widget headers() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dashboard Mesin",
              style: headingTextStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Silahkan pilih mesin yang akan di check",
                style: tigaTextStyle,
              ),
            ),
          ],
        ),
      );
    }

    Widget machines() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: machineProvider.machines
              .map(
                (machine) => CardMachine(machine),
              )
              .toList(),
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Center(
          child: Column(
            children: [
              headers(),
              Expanded(
                child: ListView(
                  children: [
                    machines(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // return ListView(
    //   children: [
    //     headers(),
    //     machines(),
    //   ],
    // );
  }
}
