import 'package:flutter/material.dart';
import 'package:reka/pages/history/history_page.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/pages/settings/settings_page.dart';
import 'package:reka/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Mesin $index"})
          .toList();
  int selectedPage = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Dashboard',
      style: optionStyle,
    ),
    Text(
      'Index 1: Machines',
      style: optionStyle,
    ),
    Text(
      'Index 2: Settings',
      style: optionStyle,
    ),
  ];

  final List<Widget> _myPages = [HomePage(), HistoryPage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultmargin),
        child: Center(
          child: Column(
            children: [
              Container(
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
              ),
              Expanded(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: myProducts.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/pengecekan');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PengecekanPage(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 127,
                          decoration: BoxDecoration(
                            color: fieldColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(myProducts[index]["name"]),
                          ),
                        ),
                      );
                    }),
              ),
              // SizedBox(
              //   height: MediaQuery.of(context).size.height,
              //   child:
              // )
            ],
          ),
        ),
      ),
    );
  }
}
