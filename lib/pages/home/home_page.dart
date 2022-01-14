import 'package:flutter/material.dart';
import 'package:reka/pages/history/history_page.dart';
import 'package:reka/pages/settings_page.dart';
import 'package:reka/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultmargin),
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
                    Text(
                      "Silahkan pilih mesin yang akan di check",
                      style: tigaTextStyle,
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
                      // return Container(
                      //   alignment: Alignment.center,
                      //   child: Text(myProducts[index]["name"]),
                      //   decoration: BoxDecoration(
                      //       color: Colors.amber,
                      //       borderRadius: BorderRadius.circular(15)),
                      // );

                      return Container(
                        margin: EdgeInsets.all(15),
                        height: 127,
                        decoration: BoxDecoration(
                          color: Color(0xfff1f1f1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(myProducts[index]["name"]),
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
