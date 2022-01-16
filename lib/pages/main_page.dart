import 'package:flutter/material.dart';
import 'package:reka/pages/history/history_page.dart';
import 'package:reka/pages/home/home_page.dart';
import 'package:reka/pages/pengecekan/pengecekan_page.dart';
import 'package:reka/pages/settings_page.dart';
import 'package:reka/theme.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // data dummy
  final List<Map> myProducts =
      List.generate(10, (index) => {"id": index, "name": "Product $index"})
          .toList();
  int selectedPage = 0;
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

  final List<Widget> _myPages = [HomePage(), HistoryPage(), SettingPage(),PengecekanPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Image(
            image: AssetImage("assets/images/profile.png"),
          ),
        ),
        title: Container(
          width: 80,
          child: Center(
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image(
              image: AssetImage("assets/images/search.png"),
            ),
          )
        ],
      ),
      body: _myPages[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex:1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: selectedPage,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
