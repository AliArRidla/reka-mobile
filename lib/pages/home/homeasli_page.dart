import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reka/models/user_model.dart';
// import 'package:reka/pages/history/history_page.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/providers/auth_provider.dart';
import 'package:reka/providers/machine_provider.dart';
// import 'package:reka/pages/settings/settings_page.dart';
import 'package:reka/theme.dart';
import 'package:reka/widgets/machine_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Mesin $index"})
          .toList();
  int selectedPage = 2;

  // final List<Widget> _myPages = [HomePage(), HistoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    MachineProvider machineProvider = Provider.of<MachineProvider>(context);
    
    Widget machines() {
      return Container(
        margin: EdgeInsets.only(top: 10),child: Column(children: machineProvider.machines.map((machine) => MachineTile(machine)).toList(),),
      );
    }

    
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Center(
          child: Column(
            children: [
              header(),
              machines(),
              SizedBox(
                height: MediaQuery.of(context).size.height,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
